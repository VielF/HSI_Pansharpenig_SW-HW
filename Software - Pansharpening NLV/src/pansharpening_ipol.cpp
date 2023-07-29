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
 * @mainpage Implementation of Nonlocal Pansharpening Image Fusion (version 2)
 *
 * README.txt:
 * @verbinclude README.txt
 */

/**
 * @file   pansharpening_ipol.cpp
 * @brief  Main executable file
 *
 * @author Joan Duran <joan.duran@uib.es>
 */

#include <stdio.h>
#include <stdlib.h>
#include "gdal/gdal.h"
#include "gdal/cpl_conv.h" /* for CPLMalloc() */
#include "gdal/cpl_vsi.h"
#include "gdal/cpl_string.h"
#include "libpansharpening.h"
#include "libauxiliar.h"
//#include "io_png.h"


// Usage: pansharpening_ipol truth.png pan.png spectral.png IHS.png
//        pansharpened.png sampling

int main(int argc, char **argv)
{
    GDALDatasetH     hDataset;
    GDALDatasetH     hDstDS, hDstPan, hDst_low;
    GDALDriverH      hDriver, hDriver2, hDriverPan;
    GDALRasterBandH  hBand, hBand_Dst, hBandPan, hBand_low;
    int              nBlockXSize, nBlockYSize;
    int            i, j;
    //unsigned short            *pafScanline;
    float            *pafScanline;
    float           *pafScanline_dst;
    float           *pafScanline_low;

    char **papszOptions = NULL, **papszOptions_pan = NULL, **papszOptions_low = NULL;
    const char *pszFormat = "ENVI";

    GDALAllRegister();

    //hDataset = GDALOpen("balloons.tif", GA_ReadOnly );
    hDataset = GDALOpen(argv[2], GA_ReadOnly );
    if( hDataset == NULL ){
      printf("\n\n\nErro");
      exit(0);
    }

    hDriver = GDALGetDatasetDriver( hDataset );

    printf( "Driver: %s/%s\n", GDALGetDriverShortName( hDriver ), GDALGetDriverLongName( hDriver ) );

    printf( "Size is %dx%dx%d\n", GDALGetRasterXSize( hDataset ), GDALGetRasterYSize( hDataset ), GDALGetRasterCount( hDataset ) );

    if( GDALGetProjectionRef( hDataset ) != NULL )
       printf( "Projection is `%s'\n", GDALGetProjectionRef( hDataset ) );

    //pafScanline = (unsigned short*) CPLMalloc(sizeof(unsigned short)*GDALGetRasterXSize( hDataset )*GDALGetRasterYSize( hDataset ));
    pafScanline = (float*) CPLMalloc(sizeof(float)*GDALGetRasterXSize( hDataset )*GDALGetRasterYSize( hDataset ));
    // Read truth image
    size_t nx, ny, nc;
    float *d_v = NULL;
    int i_test, j_test;


    if(nc > 3)  // Use only RGB image
        nc = 3;


    // Variables of high-resolution image
    int high_w = (int) GDALGetRasterXSize( hDataset );
    //int high_w = (int) nx;
    int high_h = (int) GDALGetRasterYSize( hDataset );
    //int high_h = (int) ny;
    ///@modificado
    int num_channels = (int) GDALGetRasterCount( hDataset );
    //int num_channels = (int) 10;
	int high_wh = high_w * high_h;
    int high_whc = num_channels * high_wh;

    float **truth = new float*[num_channels];
    for(int c = 0; c < num_channels; c++){
        hBand = GDALGetRasterBand( hDataset, c+1 );
        GDALGetBlockSize( hBand, &nBlockXSize, &nBlockYSize );

        GDALRasterIO( hBand, GF_Read, 0, 0, nBlockXSize, nBlockYSize,
                    pafScanline, nBlockXSize, nBlockYSize, GDT_Float32 ,
                     0, 0 );
        truth[c] = new float[high_wh];

        for(j = 0; j <  nBlockYSize * nBlockXSize; j++){
            truth[c][j] = pafScanline[j];
        }
    }

    // Parameters
    int sampling_factor = atoi(argv[1]);

    if(sampling_factor != 2 && sampling_factor != 4)
    {
        fprintf(stderr, "Error - sampling must be 2 or 4.\n");
        return EXIT_FAILURE;
    }

    if((high_w % sampling_factor != 0) || (high_h % sampling_factor != 0))
    {
        // Check validity of sampling factor
        fprintf(stderr, "Error - invalid sampling factor. Sampling must be a "
                "divisor of both width and height of truth image\n");
        return EXIT_FAILURE;
    }

    float std, h;

    if(sampling_factor == 2)
    {
        std = 1.2f;
        h = 1.25f;

    } else
    {
        std = 2.2f;
        h = 6.0f;
    }

    float lmb = 100.0f;
    float mu = 100.0f;
    int num_iterations = 100;
    float tol = 0.001f;
    int reswind = 2;
    int compwind = 1;
    float dt = 0.01f;

    float *alpha = new float[num_channels];
    for (int c = 0; c < num_channels; c++)
        alpha[c] = (float) 1/num_channels;
        //alpha[c] = (float) 1/num_channels;

///@pancromatic
    // Simulate panchromatic image
    float *pan = new float[high_wh];

    if(panchromatic(truth, pan, alpha, num_channels, high_w, high_h) != 1)
        return EXIT_FAILURE;
    //float *pan;
/*
    hDstPan = GDALOpen("PAN8.tif", GA_ReadOnly );
    if( hDstPan == NULL ){
      printf("\n\n\nErro");
      exit(0);
    }
    hDriverPan = GDALGetDatasetDriver( hDstPan );

    unsigned char *pafScanlinePan = (unsigned char *) CPLMalloc(sizeof(unsigned char)*GDALGetRasterXSize( hDstPan )*GDALGetRasterYSize( hDstPan ));

    hBandPan = GDALGetRasterBand( hDstPan, 1 );
    GDALGetBlockSize( hDstPan, &nBlockXSize, &nBlockYSize );
    GDALRasterIO( hBandPan, GF_Read, 0, 0, nBlockXSize, nBlockYSize,
                    pafScanlinePan, nBlockXSize, nBlockYSize, GDT_Byte,
                     0, 0 );
    for(int i_pan = 0; i_pan < nBlockXSize * nBlockYSize; i_pan ++ ){
        pan[i_pan] = (float)pafScanlinePan[i_pan];
        printf("\nPixel em i: %d", pafScanlinePan[i_pan]);
    }

*/
    // Simulate low-resolution RGB image
    int low_w, low_h;

    float **spectral;
    spectral = low_resolution(sampling_factor, std, truth, num_channels,
                              high_w, high_h, low_w, low_h);

    int low_wh = low_w * low_h;
    int low_whc = num_channels * low_wh;


	// Initialization for IHS transform. We use a cubic spline interpolation
    float **initial_splines = new float*[num_channels];
    for(int c = 0; c < num_channels; c++)
        initial_splines[c] = new float[high_wh];

    if(init_splines(sampling_factor, spectral, initial_splines, num_channels,
                    high_w, high_h, low_w, low_h) != 1)
        return EXIT_FAILURE;


	// Pansharpening by IHS transform
    // The result provided by IHS is used as initialization of the proposed
    // nonlocal pansharpening algorithm
    float **initial_ihs = new float*[num_channels];
    for(int c = 0; c < num_channels; c++)
        initial_ihs[c] = new float[high_wh];

    if(ihs(initial_splines, initial_ihs, pan, num_channels, high_w,
           high_h) != 1)
        return EXIT_FAILURE;

    // Quantization of IHS
    float **quantized_ihs = new float*[num_channels];

    for(int c = 0; c < num_channels; c++)
    {
        quantized_ihs[c] = new float[high_wh];

        for(int i = 0; i < high_wh; i++) {
            quantized_ihs[c][i] = rintf(MAX(0, MIN(initial_ihs[c][i], 65535)));
            //printf("\nihs: %f", quantized_ihs[c][i]);
        }
    }


    // Extended image from low-resolution to high-resolution by replication
    float **replicated = new float*[num_channels];
    for(int c = 0; c < num_channels; c++)
        replicated[c] = new float[high_wh];

    if(extension(sampling_factor, spectral, replicated, num_channels, high_w,
                 high_h, low_w) != 1)
        return EXIT_FAILURE;


    // Pansharpening by nonlocal algorithm

    float **pansharpened = new float*[num_channels];
	for(int c = 0; c < num_channels; c++)
        pansharpened[c] = new float[high_wh];

    //struct timespec t_start, t_end;
    //clock_gettime(CLOCK_MONOTONIC, & t_start);
    if(nonlocal_pansharpening(sampling_factor, std, h, lmb, mu, num_iterations,
                              tol, reswind, compwind, dt, alpha, pan,
                              quantized_ihs, replicated, pansharpened,
                              num_channels, high_w, high_h) != 1)
        return EXIT_FAILURE;

    //clock_gettime(CLOCK_MONOTONIC, &t_end);
    // Save images as PNG
    //printf("\nNano: %ld\n", (long)(t_end.tv_nsec - t_start.tv_nsec));
    //printf("\nSec: %ld\n", (long)(t_end.tv_sec - t_start.tv_sec));
    float *low_png = new float[low_whc];
    int k = 0;
    // Saving panchromatic image

    papszOptions_pan = CSLSetNameValue( papszOptions_pan, "INTERLEAVE", "BSQ" );
    hDriver2 = GDALGetDriverByName( pszFormat );
    hDstPan= GDALCreate( hDriver2, argv[3],
                        GDALGetRasterXSize( hDataset ),
                        GDALGetRasterYSize( hDataset ),
                        1, GDT_Float32, papszOptions_pan );

    float *pafScanline_pan = (float*) CPLMalloc(sizeof(float)*GDALGetRasterXSize( hDataset )*GDALGetRasterYSize( hDataset ));
    for(int i = 0; i < high_wh; i++){
        pafScanline_pan[i] = pan[i];
        //printf("\nPixel em %d: %f",i, pan[i]);
        k++;
    }
/*
    for(int carro = 0; carro<high_wh; carro++){

            printf("%f ", pan[carro]);
            if(carro%high_w == 0){
                printf("\n");
            }

    }
*/
    hBandPan = GDALGetRasterBand( hDstPan, 1);
    GDALRasterIO( hBandPan, GF_Write, 0, 0, GDALGetRasterXSize( hDataset ), GDALGetRasterYSize( hDataset ),
                      pafScanline_pan, GDALGetRasterXSize( hDataset ), GDALGetRasterYSize( hDataset ), GDT_Float32, 0, 0 );

    // Saving IHS image
    float *high_png = new float[high_whc];
    k = 0;

    // Saving pansharpened image
    papszOptions = CSLSetNameValue( papszOptions, "INTERLEAVE", "BSQ" );
    hDriver2 = GDALGetDriverByName( pszFormat );
    hDstDS = GDALCreate( hDriver2, argv[5],
                        GDALGetRasterXSize( hDataset ),
                        GDALGetRasterYSize( hDataset ),
                        GDALGetRasterCount( hDataset ),
                        GDT_Float32, papszOptions );

    pafScanline_dst = (float*) CPLMalloc(sizeof(float)*GDALGetRasterXSize( hDataset )*GDALGetRasterYSize( hDataset ));
    k = 0;
	for(int c = 0; c < num_channels; c++){
        for(int i = 0; i < high_wh; i++)
        {

            high_png[k] = pansharpened[c][i];
            pafScanline_dst[i] = pansharpened[c][i];
            k++;
        }
        hBand_Dst = GDALGetRasterBand( hDstDS, c+1 );
        GDALRasterIO( hBand_Dst, GF_Write, 0, 0, GDALGetRasterXSize( hDataset ), GDALGetRasterYSize( hDataset ),
                      pafScanline_dst, GDALGetRasterXSize( hDataset ), GDALGetRasterYSize( hDataset ), GDT_Float32, 0, 0 );
    }

    papszOptions_low = CSLSetNameValue( papszOptions_low, "INTERLEAVE", "BSQ" );
    hDriver2 = GDALGetDriverByName( pszFormat );
    hDst_low = GDALCreate( hDriver2, argv[4],
                        low_w,
                        low_h,
                        GDALGetRasterCount( hDataset ),
                        GDT_Float32, papszOptions );

    pafScanline_low = (float*) CPLMalloc(sizeof(float)*low_w*low_h);
    k = 0;
	for(int c = 0; c < num_channels; c++){
        for(int i = 0; i < low_wh; i++)
        {
            pafScanline_low[i] = spectral[c][i];
            k++;
        }
        hBand_low = GDALGetRasterBand( hDst_low, c+1 );
        GDALRasterIO( hBand_low, GF_Write, 0, 0, low_w, low_h,
                      pafScanline_low, low_w, low_h, GDT_Float32, 0, 0 );
    }

    GDALClose(hDstDS);
    GDALClose(hDataset);
    GDALClose(hDst_low);
    GDALClose(hDstPan);
	// Free memory
    delete[] alpha;
    delete[] truth;
    free(d_v);

    for(int c = 0; c < num_channels; c++)
    {
        delete[] spectral[c];
        delete[] initial_splines[c];
        delete[] initial_ihs[c];
        delete[] quantized_ihs[c];
        delete[] replicated[c];
        delete[] pansharpened[c];
    }

    delete[] spectral;
    delete[] initial_splines;
    delete[] initial_ihs;
    delete[] quantized_ihs;
    delete[] replicated;
    delete[] pansharpened;
    delete[] pan;
    delete[] low_png;
    delete[] high_png;


	return EXIT_SUCCESS;
}
