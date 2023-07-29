/*
 * Copyright 2009-2015 IPOL Image Processing On Line http://www.ipol.im/
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * @file libpansharpening.cpp
 * @brief Functions which simulates the panshapening problem and solves it with
 * the nonlocal algorithm proposed in [J. Duran, A. Buades, B. Coll, C. Sbert,
 * "A Nonlocal Variational Model for Pansharpening Image Fusion, SIAM J. Imaging
 * Sci., vol. 7(2), pp. 761-796, 2014]. Version 2.
 * @author Joan Duran <joan.duran@uib.es>
 */

#include "libpansharpening.h"
#include <math.h>

#define PANTERM 1
#define IHS 1
/**
 * \brief  Compute grayscale image of an RGB image.
 *
 * @param[in]  color  RGB image: the first pointer accounts for the channel and
 *             the second one for the pixel position.
 * @param[out] pan  panchromatic grayscale image: the pointer accounts for the
 *             pixel position.
 * @param[in]  alpha  mixing coefficients that give the panchormatic image as
 *             a linear combination of the spectral channels: the pointer
 *             accounts for the channel.
 * @param[in]  num_channels  number of channels of the image.
 * @param[in]  width, height  image size.
 * @return 1 if exit success.
 *
 */

int panchromatic(float **color, float *pan, float *alpha, int num_channels,
                 int width, int height)
{
    int dim = width * height;
    fpClear(pan, 0.0f, dim);

    // Compute grayscale image from RGB truth image
    for(int i = 0; i < dim; i++){
        for(int c = 0; c < num_channels; c++){
            pan[i] += alpha[c] * color[c][i];
            //pan[i] += color[c][i];
        }
        pan[i] = roundf(pan[i]);
        //pan[i] =pan[i]/10;
        //pan[i] =pan[i]/num_channels;
        //pan[i] = roundf(pan[i]);
        //printf("\nPixel em i2: %f", pan[i]);
    }

    return 1;
}

/**
 * \brief  Compute low-resolution RGB image from the high-resolution one by
 *         Gaussian convolution followed by subsampling.
 *
 * @param[in]   sampling_factor  sampling factor.
 * @param[in]   std  standard deviation of the convolution Gaussian kernel.
 * @param[in]   truth  high-resolution RGB image: the first pointer accounts
 *              for the channel and the second one for the pixel position.
 * @param[in]   num_channels  number of channels of the image.
 * @param[in]   high_width, high_height  truth image size.
 * @param[out]  low_width, low_height  low-resolution image size.
 * @return  low-resolution RGB image.
 *
 */

float **low_resolution(int sampling_factor, double std, float **truth,
                       int num_channels, int high_width, int high_height,
                       int & low_width, int & low_height)
{
    int high_dim = high_width * high_height;

    float **convol = new float*[num_channels];
    for(int c = 0; c < num_channels; c++)
        convol[c] = new float[high_dim];

    // Convolution by Gaussian kernel
    for(int c = 0; c < num_channels; c++)
        fiGaussianConvol(truth[c], convol[c], high_width, high_height,
                         (float) std);

    // Subsampling
    float **lowspectral = new float*[num_channels];

    for(int c = 0; c < num_channels; c++)
        lowspectral[c] = fiImageSample(convol[c], sampling_factor, high_width,
                                      high_height, low_width, low_height);

    // Delete allocated memory
    for(int c = 0; c < num_channels; c++)
        delete[] convol[c];

    delete[] convol;

    return lowspectral;
}

/**
 * \brief  Extend the low-resolution image to the high-resolution by a simple
 *         replication of a given sampling factor.
 *
 * @param[in]  sampling_factor  sampling factor.
 * @param[in]  lowres  low-resolution RGB image: the first pointer accounts for
 *             the channel and the second one for the pixel position.
 * @param[out] extended  lowres image extended to the whole domain by
 *             replication: the first pointer accounts for the channel and the
 *             second one for the pixel position.
 * @param[in]  num_channels  number of channels of the image.
 * @param[in]  high_width, high_height  extended image size.
 * @param[in]  low_width  low-resolution image size.
 * @return 1 if exit success.
 *
 */

int extension(int sampling_factor, float **lowres, float **extended,
              int num_channels, int high_width, int high_height,
              int low_width)
{
    for(int c = 0; c < num_channels; c++)
        for(int jp = 0; jp < high_height; jp++)
        {
            int js = jp / sampling_factor;

            for(int ip = 0; ip < high_width; ip++)
            {
                int is = ip / sampling_factor;

                extended[c][jp*high_width+ip] = lowres[c][js*low_width+is];
            }
        }

    return 1;
}

/**
 * \brief  Compute upsampled image through bicubic interpolation.
 *
 * @param[in]  sampling_factor  sampling factor.
 * @param[in]  lowresolution  low-resolution RGB image: the first pointer
 *             accounts for the channel and the second one for the pixel
 *             position.
 * @param[out] splines  upsampled image by splines: the first pointer
 *             accounts for the channel and the second one for the pixel
 *             position.
 * @param[in]  num_channels  number of channels of the image.
 * @param[in]  high_width, high_height  pansharpened image size.
 * @param[in]  low_width, low_height  low-resolution image size.
 * @return 1 if exit success.
 *
 */

int init_splines(int sampling_factor, float **lowresolution, float **splines,
                  int num_channels, int high_width, int high_height,
                  int low_width, int low_height)
{
    // Homography
    double **H = new double*[3];
    for(int c = 0; c < 3; c++)
        H[c] = new double[3];

    H[0][0] = (double) sampling_factor; H[0][1] = 0.0f; H[0][2] = 0.0f;
    H[1][0] = 0.0f; H[1][1] = (double) sampling_factor; H[1][2] = 0.0f;
    H[2][0] = 0.0f; H[2][1] = 0.0f; H[2][2] = 1.0f;

    // Interpolation by cubic splines
    for(int c = 0; c < num_channels; c++)
        apply_homography(lowresolution[c], low_width, low_height, H, splines[c],
                         high_width, high_height);

    // Delete allocated memory
    for(int c = 0; c < 3; c++)
        delete[] H[c];
    delete[] H;

    return 1;
}

/**
 * \brief  Compute pansharpened image through IHS transform.
 *
 * @param[in]  init  initialization: the first pointer accounts for the channel
 *             and the second one for the pixel position.
 * @param[out] fused  pansharpened image nby IHS transform: the first pointer
 *             accounts for the channel and the second one for the pixel
 *             position.
 * @param[in]  pan  panchromatic image: the pointer accounts for the pixel
 *             position.
 * @param[in]  num_channels  number of channels of the image.
 * @param[in]  pan_width, pan_height  panchromatic image size.
 * @return 1 if exit success.
 *
 */

int ihs(float **init, float **fused, float *pan, int num_channels,
         int pan_width, int pan_height)
{

    int pan_dim = pan_width * pan_height;

    // Compute intensity image
    float *intensity = new float[pan_dim];
    fpClear(intensity, 0.0f, pan_dim);

    for(int i = 0; i < pan_dim; i++) {
        for (int c = 0; c < num_channels; c++) {
#ifdef IHS
            intensity[i] += (1/num_channels) * init[c][i];
#else
            intensity[i] += 0.3333333 * init[c][i];
#endif
        }
    }

    // Compute pansharpened image
    for(int c = 0; c < num_channels; c++)
        for(int i = 0; i < pan_dim; i++)
            fused[c][i] = init[c][i] + pan[i] - intensity[i];

    // Delete allocated memory
    delete[] intensity;

    return 1;
}

/**
 * \brief  Compute the weights of the regularization term. For each pixel,
 * compute the distance between the current pixel and each neighbouring pixel
 * on the panchromatic image.
 *
 * @param[in]  pan  panchromatic image: the pointer accounts for the pixel
 *             position.
 * @param[out] weigths_pq  for each pixel @f$p @f$, value of the weights
 *             @f$\omega(p,q)\neq 0@f$ computed on panchromatic image with
 *             respect to each neighbouring pixel @f$q @f$ : the first pointer
 *             accounts for the position of the central pixel @f$p @f$ and the
 *             second one for the position of each neighbouring pixel @f$q @f$.
 * @param[out] pos_pq  for each pixel @f$p @f$, position of neighbouring pixel
 *             @f$q @f$ such that @f$\omega(p,q)\neq 0 @f$ : the first pointer
 *             accounts for the position of the central pixel @f$p @f$ and the
 *             second one for the position of each neighbouring pixel @f$q @f$.
 * @param[out] num_pq  for each pixel @f$p @f$, number of neighbouring pixels
 *             @f$q @f$ such that @f$\omega(p,q)\neq 0 @f$ : the pointer
 *             accounts for the position of @f$p @f$.
 * @param[out] weigths_qp  for each pixel @f$p @f$, value of the weights
 *             @f$\omega(q,p)\neq 0 @f$ computed on panchromatic image for which
 *             @f$p @f$ is a neighbouring pixel of @f$q @f$ : the first pointer
 *             accounts for the position of neighbouring pixel @f$p @f$ and the
 *             second one for the position of each central pixel @f$q @f$.
 * @param[out] pos_qp  for each pixel @f$p @f$, position of central pixel
 *             @f$q @f$ such that @f$\omega(q,p)\neq 0 @f$ : the first pointer
 *             accounts for the position of neighbouring pixel @f$p @f$ and the
 *             second one for the position of each central pixel @f$q @f$.
 * @param[out] num_qp  for each pixel @f$p @f$, number of central pixels
 *             @f$q @f$ such that @f$\omega(q,p)\neq 0 @f$ : the pointer
 *             accounts for the position of @f$p @f$.
 * @param[in]  h  filtering parameter that controls the decay of the weights.
 * @param[in]  reswind  half size of research window.
 * @param[in]  compwind  half size of comparison window.
 * @param[in]  width, height  panchromatic image size.
 *
 */

void compute_weights(float *pan,
                     std::vector< std::vector<float> > &weights_pq,
                     std::vector< std::vector<int> > &pos_pq,
                     std::vector<int> &num_pq,
                     std::vector< std::vector<float> > &weights_qp,
                     std::vector< std::vector<int> > &pos_qp,
                     std::vector<int> &num_qp, float h, int reswind,
                     int compwind, int width, int height)
{
    // Tabulate the function Exp(-x) for x>0.
    int luttaille = (int) (LUTMAX * LUTPRECISION);
    float *lut = new float[luttaille];
    wxFillExpLut(lut, luttaille);

    // For each pixel l, compute weights w(l,·)
    for(int y = 0; y < height; y++)
    {
        for(int x = 0; x < width; x++)
        {
            // Index of current pixel
            int l = y * width + x;

            // Reduce window size if being close to boundary
            int compwind0 = MAX(MIN(compwind, MIN(width-1-x-reswind,
                                                  MIN(height-1-y-reswind,
                                                      MIN(x-reswind,
                                                          y-reswind)))), 0);

            // Learning zone depending on the window size
            int imin = MAX(x - reswind, compwind0);
            int jmin = MAX(y - reswind, compwind0);
            int imax = MIN(x + reswind, width - compwind0 - 1);
            int jmax = MIN(y + reswind, height - compwind0 - 1);

            // Adapt filter parameter to size of comparison window
            float compdim = (float) (2 * compwind0 + 1) * (2 * compwind0 + 1);
            float filter = h * h * compdim;

            // Auxiliar variables and vectors
            std::vector<float> auxw;
            std::vector<int> auxp;
            int auxn = 0;
            float weight_max = 0.0f;
            float weight_sum = 0.0f;

            // Compute distance for each pixel in the resdim-neighborhood
            for(int j = jmin; j <= jmax; j++)
            {
                for(int i = imin; i <= imax; i++)
                {
                    // If not central pixel
                    if((i != x) || (j != y))
                    {
                        // Compute similarity distance
                        float dist = fiL2FloatDist(pan, pan, x, y, i, j,
                                                   compwind0, compwind0, width,
                                                   width);
                        dist /= filter;
                        float current_weight = wxSLUT(dist, lut);

                        // Compute maximum weight
                        if(current_weight > weight_max)
                            weight_max = current_weight;

                        // Save weight and position of neighbouring pixel
                        auxw.push_back(current_weight);
                        auxp.push_back(j * width + i);
                        weight_sum += current_weight;

                        auxn++;
                    }
                }
            }

            // Assign maximum weight to central pixel
            auxw.push_back(weight_max);
            auxp.push_back(l);
            weight_sum += weight_max;
            auxn++;

            // Normalize weights
            if(weight_sum > 0.00000001f)
            {
                for(int k = 0; k < auxn; k++)
                {
                    auxw[k] /= weight_sum;
                }
            }

            // Update output vectors
            weights_pq.push_back(auxw);
            pos_pq.push_back(auxp);
            num_pq.push_back(auxn);
        }
    }

    // For each pixel l, compute weights w(·,l)
    for(int y = 0; y < height; y++)
    {
        for(int x = 0; x < width; x++)
        {
            // Current pixel
            int l = y * width + x;

            // Reduce window size if we are close to boundary
            int compwind0 = MAX(MIN(compwind, MIN(width-1-x-reswind,
                                                  MIN(height-1-y-reswind,
                                                      MIN(x-reswind,
                                                          y-reswind)))), 0);

            // Learning zone depending on the window size
            int imin = MAX(x - reswind, compwind0);
            int jmin = MAX(y - reswind, compwind0);
            int imax = MIN(x + reswind, width - compwind0 - 1);
            int jmax = MIN(y + reswind, height - compwind0 - 1);

            // Auxiliar vectors
            std::vector<float> auxw;
            std::vector<int> auxp;
            int auxn = 0;

            // Look at research window around l
            for(int j = jmin; j <= jmax; j++)
            {
                for(int i = imin; i <= imax; i++)
                {
                    // Neighboring pixel
                    int l0 = j * width + i;

                    // Consider pixels l0 such that w(l0,l)>0
                    for(int w = 0; w < num_pq[l0]; w++)
                    {
                        if(pos_pq[l0][w] == l)
                        {
                            float weight = weights_pq[l0][w];

                            if(weight > 0.00000001f)
                            {
                                auxw.push_back(weight);
                                auxp.push_back(l0);
                                auxn++;
                            }

                            break;
                        }
                    }
                }
            }

            // Save output vectors
            weights_qp.push_back(auxw);
            pos_qp.push_back(auxp);
            num_qp.push_back(auxn);
        }
    }

    // Delete allocated memory
    delete[] lut;
}
/**
 * \brief  Compute the spectral constraint. Compute the part of the numerical
 * scheme associated to the spectral constraint under the assumption that the
 * low-resolution pixels are formed from the high-resolution ones by low-pass
 * filtering (convolution with a Gaussian kernel) followed by subsampling
 * (determined by the Dirac's comb).
 *
 * @param[in]  std  standard deviation of the convolution Gaussian kernel.
 * @param[in]  extended  arbitrary extension from low-resolution to
 *             high-resolution discrete grid: the first pointer accounts for
 *             the channel and the second one for the pixel position.
 * @param[in]  init  pansharpened image at current iteration: the first pointer
 *             accounts for the channel and the second one for the pixel
 *             position.
 * @param[out] convol  solution of the spectral constraint: the first pointer
 *             accounts for the channel and the second one for the pixel
 *             position.
 * @param[in]  dirac  Dirac's comb defined by the sampling grid: the pointer
 *             accounts for the pixel position.
 * @param[in]  num_channels  number of channels of the image.
 * @param[in]  pan_width, pan_height  panchromatic image size.
 *
 */

void spectral_constraint(double std, float **extended, float **init,
                         float **convol, float *dirac, int num_channels,
                         int pan_width, int pan_height)
{
    struct timespec t_start, t_end;
    for(int c = 0; c < num_channels; c++)
    {

        // Convolution by Gaussian kernel
        //clock_gettime(CLOCK_MONOTONIC, & t_start);
        fiGaussianConvol(init[c], convol[c], pan_width, pan_height,
                         (float) std);


        for(int j = 0; j < pan_height; j++) {
            for (int i = 0; i < pan_width; i++) {
                int l = j * pan_width + i;
                //printf("\nL - %d - dirac[l]: %f, convol[c][l]: %f, extended[c][l]: %f", l, dirac[l], convol[c][l], extended[c][l]);
                convol[c][l] = dirac[l] * (convol[c][l] - extended[c][l]);
                //printf(" result[c][l]: %f", convol[c][l]);
            }
        }
        //getchar();
        // Convolution by transposed Gaussian kernel
        fiGaussianConvol(convol[c], convol[c], pan_width, pan_height,
                         (float) std);
//        clock_gettime(CLOCK_MONOTONIC, &t_end);
//        printf("\nConv-Nano: %ld", (long)(t_end.tv_nsec - t_start.tv_nsec));
//        printf("\nConv-Sec: %ld\n", (long)(t_end.tv_sec - t_start.tv_sec));
//        getchar();
    }
}

/**
 * \brief  Nonlocal variational algorithm for pansharpening image fusion.
 * Applies Algorithm 1 to minimize the nonlocal energy functional proposed in
 * [J. Duran, A. Buades, B. Coll, C. Sbert, "A Nonlocal Variational Model for
 * Pansharpening Image Fusion, SIAM J. Imaging Sci., vol. 7(2), pp. 761-796,
 * 2014]. We solve the explicit numerical scheme given in (7).
 *
 * @param[in]  sampling_factor  sampling factor.
 * @param[in]  std  standard deviation of the convolution Gaussian kernel.
 * @param[in]  h  filtering parameter that controls the decay of the weights.
 * @param[in]  lmb  trade-off parameter linked to the panchromatic constraint.
 * @param[in]  mu  trade-off parameter linked to the spectral constraint.
 * @param[in]  num_iterations  maximum number of  algorithm iterations.
 * @param[in]  tol  algorithm tolerance.
 * @param[in]  reswind  half-size of the suppoirt zone used for searching
 *             similarities among pixels in the image.
 * @param[in]  compwind  half-size of the comparison window used for computing
 *             distances on the panchromatic.
 * @param[in]  dt  time-step parameter of the explicit scheme.
 * @param[in]  alpha  mixing coefficients that give the panchormatic image as
 *             a linear combination of the spectral channels: the pointer
 *             accounts for the channel.
 * @param[in]  pan  panchromatic image: the pointer accounts for the pixel
 *             position.
 * @param[in]  u0  initialization provided by IHS transform: the first pointer
 *             accounts for the channel and the second one for the pixel
 *             position.
 * @param[in]  uOmega  arbitrary extension of the low-resolution image to the
 *             whole discrete grid: the first pointer accounts for the channel
 *             and the second one for the pixel position.
 * @param[out] u  pansharpened image by nonlocal variational method: the first
 *             pointer accounts for the channel and the second one for the
 *             pixel position.
 * @param[in]  num_channels  number of channels of the image.
 * @param[in]  width, height  panchromatic image size.
 * @return 1 if exit success.
 *
 */

int nonlocal_pansharpening(int sampling_factor, double std, float h, float lmb,
                           float mu, int num_iterations, float tol, int reswind,
                           int compwind, float dt, float *alpha, float *pan,
                           float **u0, float **uOmega, float **u,
                           int num_channels, int width, int height)
{

    // Size of the panchromatic image
    int pan_dim = width * height;
    int aux = 0, aux2 = 0;

    // Copy initialization into fused image
    for(int c = 0; c < num_channels; c++)
        fpCopy(u0[c], u[c], pan_dim);

    // Auxiliar image for iteration purposes
    // At the very beginning, aux contains the initialization from IHS
    float **u_upd = new float*[num_channels];
    for(int c = 0; c < num_channels; c++)
    {
        u_upd[c] = new float[pan_dim];
        fpCopy(u0[c], u_upd[c], pan_dim);
    }

    // Convolved image during iteration
    float **convol = new float*[num_channels];
    for(int c = 0; c < num_channels; c++)
        convol[c] = new float[pan_dim];

    // Dirac's comb defined by sampling grid
    float *dirac = new float[pan_dim];
    fpClear(dirac, 0.0f, pan_dim);

    for(int j = 0; j < height; j += sampling_factor) {
        for (int i = 0; i < width; i += sampling_factor) {
            dirac[j * width + i] = 1.0f;
        }
    }

    // Rescale parameter linked to spectral constraint
    mu = mu * sampling_factor * sampling_factor;

    // Weight distribution computed on panchromatic
    std::vector< std::vector<float> > weights_pq;
    std::vector< std::vector<int> > pos_pq;
    std::vector<int> num_pq;

    std::vector< std::vector<float> > weights_qp;
    std::vector< std::vector<int> > pos_qp;
    std::vector<int> num_qp;

    struct timespec t_start, t_end;
    clock_gettime(CLOCK_MONOTONIC, & t_start);
    compute_weights(pan, weights_pq, pos_pq, num_pq, weights_qp, pos_qp, num_qp,
                    h, reswind, compwind, width, height);
    clock_gettime(CLOCK_MONOTONIC, &t_end);
//    // Save images as PNG
    printf("\nPesos Nano: %ld", (long)(t_end.tv_nsec - t_start.tv_nsec));
    printf("\nPesos Sec: %ld\n", (long)(t_end.tv_sec - t_start.tv_sec));


    // Iteration variables
    int niter = 0;
    float error = tol + 1.0f;
    //clock_gettime(CLOCK_MONOTONIC, & t_start);

    // Convolved image during iteration


    clock_gettime(CLOCK_MONOTONIC, & t_start);
    // Iterative process
    while((niter < num_iterations) && (error > tol))
    {
//        clock_gettime(CLOCK_MONOTONIC, & t_start);
        // Computation of the spectral constraint at current iteration

        spectral_constraint(std, uOmega, u, convol, dirac, num_channels,
                            width, height);

//        clock_gettime(CLOCK_MONOTONIC, &t_end);
//        printf("\nConv-Nano: %ld", (long)(t_end.tv_nsec - t_start.tv_nsec));
//        printf("\nConv-Sec: %ld\n", (long)(t_end.tv_sec - t_start.tv_sec));
        //printf("\n%d", niter);

        float *panterm = new float[pan_dim];
        fpClear(panterm, 0.0f, pan_dim);


        int can = 0, pix=0;
        //clock_gettime(CLOCK_MONOTONIC, & t_start);

        for (pix = 0; pix < pan_dim; pix++) {
            float avg_panterm =0;
            for(can = 0; can < num_channels; can++) {
                panterm[pix] += alpha[can] * u[can][pix];

            }

#ifdef PANTERM
           //if(pix == 20000) {
           //     printf("\npanterm[%d]: %f, pan[%d] %f", pix, panterm[pix], pix, pan[pix]);
           //}
            panterm[pix] -= pan[pix];

#else
            panterm[pix] = -pan[pix];
#endif
        }
        //clock_gettime(CLOCK_MONOTONIC, &t_end);
        //printf("\nPant-Nano: %ld", (long)(t_end.tv_nsec - t_start.tv_nsec));
        //printf("\nPant-Sec: %ld\n", (long)(t_end.tv_sec - t_start.tv_sec));
        //first = true;

//#pragma omp parallel for
        //clock_gettime(CLOCK_MONOTONIC, & t_start);
        //for(int p = 0; p < pan_dim; p++)
        for(int c = 0; c < num_channels; c++)
        {
            // Compute panchromatic constraint
            //clock_gettime(CLOCK_MONOTONIC, & t_start);
            for(int p = 0; p < pan_dim; p++)
            {


                // Regularization term involving w(p,q)
                float regterm = 0.0f;

                for(int w = 0; w < num_pq[p]; w++)
                {
                    // Weight w(p,q)
                    float weight = weights_pq[p][w];

                    // Neighboring pixel
                    int q = pos_pq[p][w];

                    // Nonlocal regularization term
                    regterm += (u[c][p] - u[c][q]) * weight;
                }

                // Regularization term involving w(q,p)
                for(int w = 0; w < num_qp[p]; w++)
                {

                    // Weight w(q,p)
                    float weight = weights_qp[p][w];

                    // Neighboring pixel
                    int q = pos_qp[p][w];

                    // Nonlocal regularization term
                    regterm += (u[c][p] - u[c][q]) * weight;

                }

                // Set value to current pixel
                // The following formula implements the explicit scheme (7)
                // given in companion IPOL paper.

                u_upd[c][p] = u[c][p] - dt * (regterm + (lmb * alpha[c] * panterm[p]) + (mu * convol[c][p]));


            }
//            clock_gettime(CLOCK_MONOTONIC, &t_end);
//            printf("\nfusion - Nano: %ld\n", (long)(t_end.tv_nsec - t_start.tv_nsec));
//            printf("\nfusion - Sec: %ld\n", (long)(t_end.tv_sec - t_start.tv_sec));
//            getchar();
        }

        // Compute error
        //error            = relative_error(u, u_upd, num_channels, pan_dim);

        // Update variables
        for(int c = 0; c < num_channels; c++)
            fpCopy(u_upd[c], u[c], pan_dim);

        niter++;
    }

    clock_gettime(CLOCK_MONOTONIC, &t_end);
    // Save images as PNG
    printf("\nNano: %ld\n", (long)(t_end.tv_nsec - t_start.tv_nsec));
    printf("\nSec: %ld\n", (long)(t_end.tv_sec - t_start.tv_sec));
    //clock_gettime(CLOCK_MONOTONIC, &t_end);
    //printf("\n%ld\n", (long)(t_end.tv_nsec - t_start.tv_nsec));
    // Delete allocated memory
    for(int c = 0; c < num_channels; c++)
    {
        delete[] u_upd[c];
        delete[] convol[c];
    }

    delete[] u_upd;
    delete[] convol;
    delete[] dirac;

    return 1;
}

/**
 * \brief  Compute relative error between two consecutive iterations.
 *
 * @param[in]  u, u_upd  previous and current iterations : the first pointer
 *             accounts for the channel and the second one for the pixel
 *             position.
 * @param[in]  num_channels  number of channels of the image.
 * @param[in]  dim  image size.
 * @return relative error.
 *
 */

float relative_error(float **u, float **u_upd, int num_channels, int dim)
{
    float error = 0.0f;

    for(int c = 0; c < num_channels; c++)
        for(int i = 0; i < dim; i++)
        {
            float value = u_upd[c][i] - u[c][i];
            error += value * value;
        }

    error /= (float) (num_channels * dim);
    error = sqrtf (error);

    return error;
}
