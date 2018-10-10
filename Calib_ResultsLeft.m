% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 532.882508835719590 ; 531.795526354738400 ];

%-- Principal point:
cc = [ 291.009409618044910 ; 222.806112996766560 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.279255336452240 ; -0.967616941336424 ; -0.038740716990524 ; -0.017697415980067 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 26.240714919577247 ; 27.188791681602751 ];

%-- Principal point uncertainty:
cc_error = [ 25.451832195362091 ; 17.250244324461189 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.129897320544029 ; 1.211804978228078 ; 0.015802103209377 ; 0.020561726926303 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 14;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters Left:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.966849e+00 ; 1.935939e+00 ; 1.403051e-01 ];
Tc_1  = [ -2.603765e+02 ; -3.141557e+02 ; 1.551819e+03 ];
omc_error_1 = [ 2.939116e-02 ; 2.941397e-02 ; 5.235617e-02 ];
Tc_error_1  = [ 7.431504e+01 ; 5.030459e+01 ; 7.601987e+01 ];

%-- Image #2:
omc_2 = [ 1.986014e+00 ; 2.257199e+00 ; -3.037824e-01 ];
Tc_2  = [ -1.823517e+02 ; -3.714777e+02 ; 1.883762e+03 ];
omc_error_2 = [ 2.147601e-02 ; 3.393125e-02 ; 4.936566e-02 ];
Tc_error_2  = [ 8.921818e+01 ; 6.036104e+01 ; 9.054643e+01 ];

%-- Image #3:
omc_3 = [ 1.761525e+00 ; 1.787303e+00 ; 5.213155e-01 ];
Tc_3  = [ -3.090338e+02 ; -3.107246e+02 ; 1.599544e+03 ];
omc_error_3 = [ 3.832826e-02 ; 3.208061e-02 ; 4.788076e-02 ];
Tc_error_3  = [ 7.616670e+01 ; 5.216624e+01 ; 7.936045e+01 ];

%-- Image #4:
omc_4 = [ 1.711163e+00 ; 1.510808e+00 ; -4.243093e-01 ];
Tc_4  = [ -4.529366e+02 ; -1.264844e+02 ; 1.847245e+03 ];
omc_error_4 = [ 2.433313e-02 ; 3.825755e-02 ; 3.763297e-02 ];
Tc_error_4  = [ 8.867835e+01 ; 6.001354e+01 ; 9.011171e+01 ];

%-- Image #5:
omc_5 = [ 1.984612e+00 ; 1.942612e+00 ; 1.158334e-01 ];
Tc_5  = [ -4.765323e+02 ; -2.348699e+02 ; 2.174624e+03 ];
omc_error_5 = [ 2.978434e-02 ; 3.077101e-02 ; 5.753266e-02 ];
Tc_error_5  = [ 1.049218e+02 ; 7.074036e+01 ; 1.069137e+02 ];

%-- Image #6:
omc_6 = [ 2.251611e+00 ; 1.646705e+00 ; 2.003584e-01 ];
Tc_6  = [ -6.900934e+02 ; -2.164933e+02 ; 2.135320e+03 ];
omc_error_6 = [ 3.307746e-02 ; 2.896876e-02 ; 5.869055e-02 ];
Tc_error_6  = [ 1.041680e+02 ; 7.030264e+01 ; 1.060464e+02 ];

%-- Image #7:
omc_7 = [ -2.225662e+00 ; -2.138668e+00 ; 3.426222e-01 ];
Tc_7  = [ -5.403864e+02 ; -2.077164e+02 ; 2.377243e+03 ];
omc_error_7 = [ 3.962414e-02 ; 2.684032e-02 ; 4.647160e-02 ];
Tc_error_7  = [ 1.117595e+02 ; 7.737900e+01 ; 1.111401e+02 ];

%-- Image #8:
omc_8 = [ 1.837633e+00 ; 2.140118e+00 ; 5.415128e-02 ];
Tc_8  = [ -4.739403e+02 ; -3.574053e+02 ; 2.205379e+03 ];
omc_error_8 = [ 2.568013e-02 ; 3.325027e-02 ; 5.836095e-02 ];
Tc_error_8  = [ 1.061432e+02 ; 7.164148e+01 ; 1.087810e+02 ];

%-- Image #9:
omc_9 = [ 1.988187e+00 ; 1.954160e+00 ; 1.655361e-01 ];
Tc_9  = [ -6.683343e+02 ; -1.669854e+02 ; 2.686599e+03 ];
omc_error_9 = [ 3.543059e-02 ; 3.750365e-02 ; 6.801271e-02 ];
Tc_error_9  = [ 1.302718e+02 ; 8.778183e+01 ; 1.319775e+02 ];

%-- Image #10:
omc_10 = [ 1.837787e+00 ; 1.699912e+00 ; -1.077697e-01 ];
Tc_10  = [ -7.217326e+02 ; -1.016052e+02 ; 2.845199e+03 ];
omc_error_10 = [ 2.707065e-02 ; 3.526289e-02 ; 4.456258e-02 ];
Tc_error_10  = [ 1.380576e+02 ; 9.293179e+01 ; 1.425163e+02 ];

%-- Image #11:
omc_11 = [ 1.642095e+00 ; 2.149142e+00 ; 5.373221e-02 ];
Tc_11  = [ -5.925509e+02 ; -3.476945e+02 ; 2.868186e+03 ];
omc_error_11 = [ 2.784345e-02 ; 4.014412e-02 ; 5.650520e-02 ];
Tc_error_11  = [ 1.380754e+02 ; 9.333372e+01 ; 1.410293e+02 ];

%-- Image #12:
omc_12 = [ 2.000060e+00 ; 1.732976e+00 ; 3.907305e-01 ];
Tc_12  = [ -6.935593e+02 ; -1.748231e+02 ; 2.726067e+03 ];
omc_error_12 = [ 3.829423e-02 ; 3.200924e-02 ; 5.733701e-02 ];
Tc_error_12  = [ 1.318994e+02 ; 8.921316e+01 ; 1.344080e+02 ];

%-- Image #13:
omc_13 = [ 1.836345e+00 ; 2.063654e+00 ; 2.584920e-01 ];
Tc_13  = [ -5.991826e+02 ; -3.518325e+02 ; 2.878833e+03 ];
omc_error_13 = [ 3.551213e-02 ; 4.048985e-02 ; 6.646327e-02 ];
Tc_error_13  = [ 1.380561e+02 ; 9.404997e+01 ; 1.398392e+02 ];

%-- Image #14:
omc_14 = [ 2.146508e+00 ; 2.084082e+00 ; -2.171980e-01 ];
Tc_14  = [ -5.011491e+02 ; -1.979464e+02 ; 2.438430e+03 ];
omc_error_14 = [ 2.719610e-02 ; 3.608660e-02 ; 5.155181e-02 ];
Tc_error_14  = [ 1.159840e+02 ; 7.891958e+01 ; 1.200590e+02 ];

