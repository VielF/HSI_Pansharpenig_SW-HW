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

#ifndef _LIBPANSHARPENING_H_
#define _LIBPANSHARPENING_H_

#include "libauxiliar.h"
#include "time.h"
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
                 int width, int height);

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
                       int & low_width, int & low_height);

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
              int low_width);

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
                 int low_width, int low_height);

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
        int pan_width, int pan_height);

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
                     int compwind, int width, int height);

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
                         int pan_width, int pan_height);

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
                           int num_channels, int width, int height);

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

float relative_error(float **u, float **u_upd, int num_channels, int dim);

#endif
