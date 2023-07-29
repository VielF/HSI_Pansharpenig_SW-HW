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

#ifndef _LIBAUXILIAR_H_
#define _LIBAUXILIAR_H_

#define MAX(i,j) ( (i)<(j) ? (j):(i) )
#define MIN(i,j) ( (i)<(j) ? (i):(j) )

#define LUTMAX 30.0
#define LUTMAXM1 29.0
#define LUTPRECISION 1000.0

#include <stdlib.h>
#include <string.h>
#include <fstream>
#include <cmath>
#include <vector>

/**
 * \brief  Initializate a float vector.
 * 	
 * @param[in]  u  vector input.
 * @param[out] u  vector output.
 * @param[in]  value  value inserted.
 * @param[in]  dim  vector size.
 *
 */

void fpClear(float *u, float value, int dim);

/**
 * \brief  Copy the values of a float vector into another.
 *
 * @param[in]  input  vector input.
 * @param[out] output  vector output.
 * @param[in]  dim  vectors size.
 *
 */

void fpCopy(float *input, float *output, int dim);

/**
 * \brief  Subsample an image. 
 * 	
 * @param[in]  input  high-resolution image: the pointer accounts for the
 *             pixel position.
 * @param[in]  sampling_factor  sampling factor.
 * @param[in]  high_width, high_height  original image size.
 * @param[out] low_width, low_height  subsampled image size.
 * @return  Sampled image.
 *
 */

float *fiImageSample(float *input, float sampling_factor, int high_width,
                     int high_height, int & low_width, int & low_height);

/**
 * \brief  Create Gaussian kernel. 
 * 	
 * @param[in]  std  standard deviation.
 * @param[out] size  dimension of kernel.
 * @return  Gaussian kernel.
 *
 */

float *fiFloatGaussKernel(float std, int & size);

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
                                  float *kernel, int ksize);

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
                                float *kernel, int ksize);

/**
 * \brief  Convolve an image with Gaussian kernel.
 * 	
 * @param[in]  u  input image.
 * @param[out] v  convolved image.
 * @param[in]  width, height  image size.
 * @param[in]  sigma  standard deviation of the Gaussian kernel.
 *
 */

void fiGaussianConvol(float *u, float *v, int width, int height, float sigma);

/**
  * \brief  Tabulate exp(-x) function
  *
  * @param[out] lut  vector.
  * @param[in]  size  length of the vector.
  *
  */

void wxFillExpLut(float *lut, int size);

/**
  * \brief  Compute exp(-x) using lut table.
  *
  * @param[in] argument	 argument of the exponential.
  * @param[in] lut	lookup table.
  * @return exponential value.
  */

float wxSLUT(float argument, float *lut);

/**
  * \brief  Compute patch distances.
  *
  * @param[in] u0, u1  images where distances are computed.
  * @param[in] i0, j0  position of central pixel.
  * @param[in] i1, j1  position of neighbouring pixel.
  * @param[in] xradius, yradius  half-size of comparison window.
  * @param[in] width0, width1  image size.
  * @return distance between patches.
  */

float fiL2FloatDist(float *u0, float *u1, int i0, int j0, int i1, int j1,
                    int xradius, int yradius, int width0, int width1);

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
                      float *output, int high_width, int high_height);

void luinv(double **A, double **inverse, int size);

void ludcmp(double **A, double *indx, double & d, int size);

void lubksb(double **A, double *indx, double *b, int size);

void finvsplineMW(float *input, float *output, int width, int height);

void invspline1DMW(double *c, int size, double z);

double initcausalMW(double *c, int n, double z);

float evaluate_splineMW(float *ref, float xp, float yp, int width, int height);

void spline3MW(float *c, float t);

#endif
