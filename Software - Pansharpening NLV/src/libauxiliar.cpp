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
 * @file libauxiliar.cpp
 * @brief Auxiliar functions.
 * @author Joan Duran <joan.duran@uib.es>
 */

#include "libauxiliar.h"

/**
 * \brief  Initializate a float vector.
 * 	
 * @param[in]  u  vector input.
 * @param[out] u  vector output.
 * @param[in]  value  value inserted.
 * @param[in]  dim  vector size.
 *
 */

void fpClear(float *u, float value, int dim) 
{
    for(int i = 0; i < dim; i++) 
	    u[i] = value;
}

/**
 * \brief  Copy the values of a float vector into another.
 *
 * @param[in]  input  vector input.
 * @param[out] output  vector output.
 * @param[in]  dim  vectors size.
 *
 */

void fpCopy(float *input, float *output, int dim)
{
    if (input != output)  
        memcpy((void *) output, (const void *) input, dim * sizeof(float));
}

/**
 * \brief  Subsample an image. 
 * 	
 * @param[in]  input  high-resolution image: the pointer accounts for the
 *             pixel position.
 * @param[in]  sampling_factor  sampling factor.
 * @param[in]  high_width, high_height  high-resolution image size.
 * @param[out] low_width, low_height  subsampled image size.
 * @return  Sampled image.
 *
 */

float *fiImageSample(float *input, float sampling_factor, int high_width,
                     int high_height, int & low_width, int & low_height)
{
    low_width = (int) floor((float) high_width / sampling_factor); 
    low_height = (int) floor((float) high_height / sampling_factor);
    
    int low_dim = low_width * low_height;
    float *sampled = new float[low_dim];

    for(int j = 0; j < low_height; j++)
        for(int i = 0; i < low_width; i++)
            sampled[j*low_width+i] = input[(int)rintf((float)j*sampling_factor)
                                    * high_width 
                                    + (int)rintf((float)i*sampling_factor)];

    return sampled;
}

/**
 * \brief  Create Gaussian kernel. 
 * 	
 * @param[in]  std  standard deviation.
 * @param[out] size  dimension of kernel.
 * @return  Gaussian kernel.
 *
 */

float *fiFloatGaussKernel(float std, int & size)
{
    int n = 4 * ceilf(std) + 1; 
    size = n;
        
    float *u = new float[n];

    if(n == 1)
        u[0] = 1.0;
    else
    {
        int ishift = (n - 1) / 2; 

        for(int i = ishift; i < n; i++) 
        {
            float v = (float) (i-ishift) / std;
            u[i] = u[n-1-i] = (float) exp(-0.5 * v * v); 
        }
    }	
    
    float fSum = 0.0f;
    for (int i = 0; i < n; i++)
        fSum += u[i];	
    for (int i = 0; i < n; i++) {
        u[i] /= fSum;

    }

    return u;
}

/**
 * \brief  Horizontal Gaussian convolution.
 * 	
 * @param[in]  u  input image.
 * @param[out] v  convolved image.
 * @param[in]  width, height  image size.
 * @param[in]  kernel  Gaussian kernel.
 * @param[in]  ksize  kernel size.
 *
 */

void fiFloatHorizontalConvolution(float *u, float *v, int width, int height,
                                  float *kernel, int ksize)
{
    int halfsize = ksize / 2;
    int buffersize = width + ksize;
    float *buffer = new float[buffersize];
        
    for (int r = 0; r < height; r++)
    {
        int l = r * width;
        for(int i = 0; i < halfsize; i++)
            buffer[i] = u[l+halfsize-1-i];

        for(int i = 0; i < width; i++)
            buffer[halfsize+i] = u[l+i];
    
        for(int i = 0; i < halfsize; i++)
            buffer[i+width+halfsize] = u[l+width-1-i];

        for (int i = 0; i < width; i++) 
        {
            float sum = 0.0;
            float *bp = &buffer[i];
            float *kp = &kernel[0];

            int k = 0;

            for(; k+4 < ksize; bp += 5, kp += 5, k += 5) 
                sum += bp[0] * kp[0] +  bp[1] * kp[1] + bp[2] * kp[2] +
                       bp[3] * kp[3] +  bp[4] * kp[4];

            for(; k < ksize; bp++, kp++, k++)
                sum += *bp * (*kp);

            buffer[i] = sum;
        }

        for(int c = 0; c < width; c++)
             v[r*width+c] = buffer[c];
    }

    delete[] buffer;
}

/**
 * \brief  Vertical Gaussian convolution.
 * 	
 * @param[in]  u  input image.
 * @param[out] v  convolved image.
 * @param[in]  width, height  image size.
 * @param[in]  kernel  Gaussian kernel.
 * @param[in]  ksize  kernel size.
 *
 */

void fiFloatVerticalConvolution(float *u, float *v, int width, int height,
                                float *kernel, int ksize)
{

    int halfsize = ksize / 2;
    int buffersize = height + ksize;
    float *buffer = new float[buffersize];
        
    for(int c = 0; c < width; c++)
    {
        for(int i = 0; i < halfsize; i++)
            buffer[i] = u[(halfsize-i-1)*width+c];
            
        for(int i = 0; i < height; i++)
            buffer[halfsize+i] = u[i*width+c];
            
        for(int i = 0; i < halfsize; i++)
            buffer[halfsize+height+i] = u[(height-i-1)*width+c];

        for (int i = 0; i < height; i++) 
        {
            float sum = 0.0;
            float *bp = &buffer[i];
            float *kp = &kernel[0];

            int k = 0;

            for(; k+4 < ksize; bp += 5, kp += 5, k += 5) {
                sum += bp[0] * kp[0] + bp[1] * kp[1] + bp[2] * kp[2] +
                       bp[3] * kp[3] + bp[4] * kp[4];
            }
            for(; k < ksize; bp++, kp++, k++)
                sum += *bp * (*kp);

            buffer[i] = sum;
        }
            
        for(int r = 0; r < height; r++)
            v[r*width+c] = buffer[r];
    }

    delete[] buffer;
}

/**
 * \brief  Convolve an image with Gaussian kernel.
 * 	
 * @param[in]  u  input image.
 * @param[out] v  convolved image.
 * @param[in]  width, height  image size. 
 * @param[in]  sigma  standard deviation of the Gaussian kernel.
 *
 */

void fiGaussianConvol(float *u, float *v, int width, int height, float sigma)
{
    int ksize;	
    float *kernel;
    kernel = fiFloatGaussKernel(sigma, ksize);

    if (u != v)
        fpCopy(u, v, width*height);        

    fiFloatHorizontalConvolution(v, v, width, height, kernel, ksize);
    fiFloatVerticalConvolution(v, v, width, height, kernel, ksize);

    delete[] kernel;
}

/**
  * \brief  Tabulate exp(-x) function
  *
  * @param[out] lut  vector.
  * @param[in]  size  length of the vector.
  *
  */

void wxFillExpLut(float *lut, int size)
{
    for(int i = 0; i < size; i++)
        lut[i] = expf(- (float) i / LUTPRECISION);
}

/**
  * \brief  Compute exp(-x) using lut table.
  *
  * @param[in] argument	 argument of the exponential.
  * @param[in] lut	lookup table.
  * @return exponential value.
  */

float wxSLUT(float argument, float *lut)
{
    if(argument >= (float) LUTMAXM1)
        return 0.0f;

    int  x = (int) floor((double) argument * (float) LUTPRECISION);

    float y1 = lut[x];
    float y2 = lut[x+1];

    return y1 + (y2 - y1) * (argument * LUTPRECISION - x);
}

/**
  * \brief  Compute patch distances.
  *
  * @param[in] u0, u1  images where distances are computed.
  * @param[in] i0, j0  position of central pixel.
  * @param[in] i1, j1  position of neighbouring pixel.
  * @param[in] xradius, yradius  half-size of comparison window.
  * @param[in] width0, width1  image sizes.
  * @return distance between patches.
  */

float fiL2FloatDist(float *u0, float *u1, int i0, int j0, int i1, int j1,
                    int xradius, int yradius, int width0, int width1)
{
    float dist = 0.0f;     
  
    for(int s = -yradius; s <= yradius; s++)
    {
        int l = (j0 + s) * width0 + (i0 - xradius);
        float *ptr0 = &u0[l];

        l = (j1 + s) * width1 + (i1 - xradius);
        float *ptr1 = &u1[l];    

        for(int r = -xradius; r <= xradius; r++, ptr0++, ptr1++)
        {
            float dif = (*ptr0 - *ptr1); 
            dist += (dif * dif); 
        }
    }

    return dist;
}

/**
  * \brief  Apply planar homography
  *
  * @param[in]  input  input vector.
  * @param[in]  low_width, low_height  low-resolution size.
  * @param[in]  H  homography.
  * @param[out] output  output vector.
  * @param[in]  high_width, high_height  high-resolution size.
  *
  */

void apply_homography(float *input, int low_width, int low_height, double **H,
                      float *output, int high_width, int high_height)
{
    double **V = new double*[3];
    for(int c = 0; c < 3; c++)
        V[c] = new double[3];

    luinv(H, V, 3);
    
    float *coeffs = new float[low_width * low_height];
    float *ref;        

    finvsplineMW(input, coeffs, low_width, low_height);
    ref = coeffs;

    double *vec = new double[3];
    double *vres = new double[3];
 
    for(int i = 0; i < high_width; i++)
        for(int j = 0; j < high_height; j++)
        {
            int l = j * high_width + i;

            vec[0] = (double) i;
            vec[1] = (double) j;
            vec[2] = 1.0;

            for(int c1 = 0; c1 < 3; c1++) {
                vres[c1] = 0.0;                
                for(int c2 = 0; c2 < 3; c2++)
                    vres[c1] += V[c1][c2] * vec[c2];
            }
        
            if (vres[2] != 0.0) 
            {
                vres[0] /= vres[2];
                vres[1] /= vres[2];
                
                float xp =  (float) vres[0];
                float yp =  (float) vres[1];
                    
                float res = evaluate_splineMW(ref, xp, yp, low_width,
                                              low_height);
                output[l] = res;
            } else
                output[l] = -1; 
        }

    for (int c = 0; c < 3; c++)
        delete[] V[c];

    delete[] V; delete[] coeffs; delete[] vec; delete[] vres;
}

void luinv(double **A, double **inverse, int size)
{
    double *col = new double[size];
    double *indx = new double[size];    
    double **inverse_aux = new double*[size];
    double d;

    for(int i = 0; i < size; i++)
    {
        inverse_aux[i] = new double[size];

        for(int j = 0; j < size; j++)
        {
            inverse_aux[i][j] = A[i][j];
            inverse[i][j] = A[i][j];
        }
    }
   
    ludcmp(inverse_aux, indx, d, size);

    for(int j = 0; j < size; j++)
    {
        for(int i = 0; i < size; i++)
            col[i] = 0.0;
        
        col[j] = 1.0;

        lubksb(inverse_aux, indx, col, size);

        for(int i = 0; i < size; i++)
            inverse[i][j] = col[i];
    }

    for(int c = 0; c < size; c++)
        delete[] inverse_aux[c];

    delete[] inverse_aux; delete[] col; delete[] indx;
}

void ludcmp(double **A, double *indx, double & d, int size)
{
    const double TINY = 1.0e-20;
    int i, j, k, imax;
    double big, dum, sum, temp;
    double *vv = new double[size];
    
    d = 1.0;

    for(i = 0; i < size; i++)
    {
        big = 0.0;
            
        for(j = 0; j < size; j++)
            if((temp = fabs(A[i][j])) > big)
                big = temp;
        
        if(big == 0.0)
        {
            printf("Singular matrix in routine ludcmp");
            exit(-1);
        }
        
        vv[i] = 1.0 / big;
    }
    
    for(j = 0; j < size; j++)
    {
        for(i = 0; i < j; i++)
        {
            sum = A[i][j];
            
            for(k = 0; k < i; k++)
                sum -= A[i][k] * A[k][j];

            A[i][j] = sum;
        }

        big = 0.0;

        for(i = j; i < size; i++)
        {
            sum = A[i][j];

            for(k = 0; k < j; k++)
                sum -= A[i][k] * A[k][j];

            A[i][j] = sum;

            if((dum = vv[i] * fabs(sum)) >= big)
            {
                big = dum;
                imax = i;
            }
        }

        if(j != imax)
        {
            for(k = 0; k < size; k++)
            {
                dum = A[imax][k];
                A[imax][k] = A[j][k];
                A[j][k] = dum;
            }
                
            d = -d;
            vv[imax] = vv[j];
        }

        indx[j] = (double) imax;

        if(A[j][j] == 0.0) 
            A[j][j] = TINY;

        if(j != size-1)
        { 
            dum = 1.0 / A[j][j];

            for(i = j+1; i < size; i++)
                A[i][j] *= dum;
        }
    }

    delete[] vv;
}

void lubksb(double **A, double *indx, double *b, int size)
{
    int i, ip, j;
    int ii = 0;
    double sum;

    for(i = 0; i < size; i++)
    {
        ip = (int) indx[i];
        sum = b[ip];
        b[ip] = b[i];

        if(ii != 0)
            for(j = ii-1; j < i; j++)
                sum -= A[i][j] * b[j];
        else if(sum != 0.0)
            ii = i + 1;
            
        b[i] = sum;
    }
    
    for (i = size-1; i >= 0; i--)
    {
        sum = b[i];

        for(j = i+1; j < size; j++)
            sum -= A[i][j] * b[j];

        b[i] = sum / A[i][i];
    }
}

void finvsplineMW(float *input, float *output, int width, int height)
{
    int dim = width * height;
    double z = -0.26794919;

    double *c = (double*) malloc(dim * sizeof(double));
    double *d = (double*) malloc(dim * sizeof(double));

    int x, y;

    for(x = dim; x--; )
	    c[x] = (double)input[x];

    for(y = 0; y < height; y++) 
        invspline1DMW(c+y*width, width, z);

	for(x = 0; x < width; x++)
        for(y = 0; y < height; y++) 
	        d[x*height+y] = c[y*width+x];

    for(x = 0; x < width; x++) 
        invspline1DMW(d+x*height, height, z);

    for(x = 0; x < width; x++)
	    for(y = 0; y < height; y++) 
		    output[y*width+x] = (float) d[x*height+y];
		
    free(c); free(d); 
}

void invspline1DMW(double *c, int size, double z)
{
    double lambda = (1.0 - z) * (1.0 - 1.0 / z);
    int n;

    for(n = size; n--; )
        c[n] *= lambda;

    c[0] = initcausalMW(c, size, z);

    for(n = 1; n < size; n++)  
	    c[n] += z * c[n-1];

    c[size-1] = (z / (z * z - 1.0)) * (z * c[size-2] + c[size-1]);

    for(n = size-1; n--; ) 
        c[n] = z * (c[n+1] - c[n]);
}

double initcausalMW(double *c, int n, double z)
{
    double zk = z;
    double iz = 1.0 / z;
    double z2k = pow(z, (double)n - 1.0);
    double sum = c[0] + z2k * c[n-1];
	z2k = z2k * z2k * iz;

    for(int k = 1; k <= n-2; k++)
    {
        sum += (zk + z2k) * c[k];
	    zk *= z;
		z2k *= iz;
	}
	
    return (sum / (1.0 - zk * zk));
}

float evaluate_splineMW(float *ref, float xp, float yp, int width, int height)
{
    float *cx = new float[4];
    float *cy = new float[4];
 
    int xi = (int) floor((double) xp); 
    int yi = (int) floor((double) yp);

    float res;

    if(xp < 0.0 || xp >= (float) width || yp < 0.0 || yp >= (float) height)
        res = -1; 
    else
    {
        float ux = xp - (float) xi;
        float uy = yp - (float) yi;

        int n1 = -1;
        int n2 = 2;
        spline3MW(cx, ux);
        spline3MW(cy, uy);

        res = 0.0; 

        if (xi+n1 >= 0 && xi+n2 < width && yi+n1 >= 0 && yi+n2 < height)
        {
            int adr = yi * width + xi;

            for(int dy = n1; dy <= n2; dy++) 
                for(int dx = n1; dx <= n2; dx++)
                    res += cy[n2-dy] * cx[n2-dx] * ref[adr+width*dy+dx];
        } else
            for(int dy = n1; dy <= n2; dy++)
                for(int dx = n1; dx <= n2; dx++)
                {
                    float vMW;
                    if (xi+dx < 0 || xi+dx >= width || yi+dy < 0 || yi+dy >= height)
			            vMW = -1;
                    else
                        vMW = ref[(yi+dy)*width+(xi+dx)];

                    res += cy[n2-dy] * cx[n2-dx] * vMW;
                }     
    }

    delete[] cx; delete[] cy;
    
    return res;
}

void spline3MW(float *c, float t)
{
    float tmp = 1.0 - t;

    c[0] = 0.1666666666 * t * t * t;
	c[1] = 0.6666666666 - 0.5 * tmp * tmp * (1.0 + t);
	c[2] = 0.6666666666 - 0.5 * t * t * (2.0 - t);
	c[3] = 0.1666666666 * tmp * tmp * tmp;
}

