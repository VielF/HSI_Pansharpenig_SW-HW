clearvars
close all

p = fileparts(mfilename('fullpath'));

PRECISION    = 'single';
OFFSET       = 0 ;
INTERLEAVE   = 'bsq';
BYTEORDER    = 'ieee-le';

%AVIRIS_IndianPine_Site3_float
% Beltsville
% chikusei
% Cuprite
% dc_new
% DeepHorizon
% RedSea
% REF_float_100_100
% Reno
% Suwannee

%FILENAME_REF = [p '/AVIRIS_IndianPine_Site3_uint16_crop_woods_1.raw']; % where you put the data
FILENAME_REF = [p '/DeepHorizon_48x48.raw']; % where you put the data
FILENAME_OUT = [p '/dp_4_ps']; % where you put the data
SIZE_REF     = [48,48,360]; 
I_REF        = multibandread(FILENAME_REF, SIZE_REF, PRECISION, OFFSET, INTERLEAVE, BYTEORDER);
I_OUT        = multibandread(FILENAME_OUT, SIZE_REF, PRECISION, OFFSET, INTERLEAVE, BYTEORDER);

O_RESULT = QualityIndices(I_OUT,I_REF,2);