% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 601.730844251917690 ; 581.887105857937970 ];

%-- Principal point:
cc = [ 219.829047509894080 ; 254.724905544805300 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.251753728073581 ; 0.437903627546445 ; -0.005312312783367 ; -0.091730786720801 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 44.747175869776598 ; 32.270952761463199 ];

%-- Principal point uncertainty:
cc_error = [ 40.413434634510679 ; 15.768174509580676 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.128766967190221 ; 0.562307363123869 ; 0.010381112643499 ; 0.034758167484828 ; 0.000000000000000 ];

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


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -2.062462e+00 ; -2.116878e+00 ; 6.386723e-01 ];
Tc_1  = [ -1.542140e+02 ; -3.105146e+02 ; 1.809013e+03 ];
omc_error_1 = [ 4.526582e-02 ; 3.129152e-02 ; 6.040508e-02 ];
Tc_error_1  = [ 1.205129e+02 ; 4.674141e+01 ; 9.096987e+01 ];

%-- Image #2:
omc_2 = [ -1.638147e+00 ; -1.956733e+00 ; 9.241670e-01 ];
Tc_2  = [ 1.226072e+02 ; -3.727439e+02 ; 2.026309e+03 ];
omc_error_2 = [ 4.438027e-02 ; 4.242108e-02 ; 5.790042e-02 ];
Tc_error_2  = [ 1.360344e+02 ; 5.501680e+01 ; 8.995371e+01 ];

%-- Image #3:
omc_3 = [ 2.109826e+00 ; 2.178732e+00 ; -1.802989e-01 ];
Tc_3  = [ -1.675573e+02 ; -3.070055e+02 ; 1.877845e+03 ];
omc_error_3 = [ 3.052550e-02 ; 3.632041e-02 ; 7.350702e-02 ];
Tc_error_3  = [ 1.259902e+02 ; 5.030447e+01 ; 8.912871e+01 ];

%-- Image #4:
omc_4 = [ 1.656290e+00 ; 1.959616e+00 ; -1.141425e+00 ];
Tc_4  = [ -1.032248e+02 ; -1.206744e+02 ; 2.178146e+03 ];
omc_error_4 = [ 3.063696e-02 ; 3.360378e-02 ; 7.358542e-02 ];
Tc_error_4  = [ 1.454125e+02 ; 5.817840e+01 ; 1.036399e+02 ];

%-- Image #5:
omc_5 = [ -2.065741e+00 ; -2.101226e+00 ; 5.952324e-01 ];
Tc_5  = [ 8.562611e+01 ; -2.344211e+02 ; 2.447406e+03 ];
omc_error_5 = [ 4.111129e-02 ; 3.394400e-02 ; 6.209038e-02 ];
Tc_error_5  = [ 1.640620e+02 ; 6.573773e+01 ; 1.203586e+02 ];

%-- Image #6:
omc_6 = [ -2.382535e+00 ; -1.838155e+00 ; 6.230736e-01 ];
Tc_6  = [ -9.636297e+01 ; -2.139005e+02 ; 2.553138e+03 ];
omc_error_6 = [ 4.614994e-02 ; 2.595574e-02 ; 7.094542e-02 ];
Tc_error_6  = [ 1.705840e+02 ; 6.769453e+01 ; 1.273635e+02 ];

%-- Image #7:
omc_7 = [ -1.744109e+00 ; -1.692164e+00 ; 9.489625e-01 ];
Tc_7  = [ 1.780594e+02 ; -2.069513e+02 ; 2.671257e+03 ];
omc_error_7 = [ 4.171103e-02 ; 4.339494e-02 ; 5.888601e-02 ];
Tc_error_7  = [ 1.791833e+02 ; 7.318488e+01 ; 1.180936e+02 ];

%-- Image #8:
omc_8 = [ -1.835532e+00 ; -2.209962e+00 ; 5.905171e-01 ];
Tc_8  = [ 1.134635e+02 ; -3.566273e+02 ; 2.500747e+03 ];
omc_error_8 = [ 4.040258e-02 ; 3.907703e-02 ; 5.769985e-02 ];
Tc_error_8  = [ 1.677600e+02 ; 6.690213e+01 ; 1.217004e+02 ];

%-- Image #9:
omc_9 = [ -2.080307e+00 ; -2.096829e+00 ; 5.093400e-01 ];
Tc_9  = [ 2.855229e+02 ; -1.669684e+02 ; 3.026707e+03 ];
omc_error_9 = [ 4.205059e-02 ; 4.307221e-02 ; 7.581898e-02 ];
Tc_error_9  = [ 2.040503e+02 ; 8.292935e+01 ; 1.491672e+02 ];

%-- Image #10:
omc_10 = [ 1.949271e+00 ; 2.112651e+00 ; -8.521003e-01 ];
Tc_10  = [ 3.627926e+02 ; -9.871406e+01 ; 3.212264e+03 ];
omc_error_10 = [ 2.345218e-02 ; 2.960260e-02 ; 7.778061e-02 ];
Tc_error_10  = [ 2.171085e+02 ; 8.870321e+01 ; 1.584738e+02 ];

%-- Image #11:
omc_11 = [ -1.752224e+00 ; -2.414844e+00 ; 5.503455e-01 ];
Tc_11  = [ 4.649318e+02 ; -3.469649e+02 ; 3.148251e+03 ];
omc_error_11 = [ 3.993852e-02 ; 4.154394e-02 ; 6.952868e-02 ];
Tc_error_11  = [ 2.131836e+02 ; 8.619621e+01 ; 1.561687e+02 ];

%-- Image #12:
omc_12 = [ 2.308871e+00 ; 2.070075e+00 ; -3.867763e-01 ];
Tc_12  = [ 2.941721e+02 ; -1.726739e+02 ; 3.078893e+03 ];
omc_error_12 = [ 4.278350e-02 ; 3.470585e-02 ; 9.784426e-02 ];
Tc_error_12  = [ 2.071615e+02 ; 8.470066e+01 ; 1.493063e+02 ];

%-- Image #13:
omc_13 = [ -1.988975e+00 ; -2.250038e+00 ; 3.988399e-01 ];
Tc_13  = [ 4.599444e+02 ; -3.499529e+02 ; 3.145782e+03 ];
omc_error_13 = [ 4.369330e-02 ; 4.813362e-02 ; 9.335559e-02 ];
Tc_error_13  = [ 2.126550e+02 ; 8.652066e+01 ; 1.548492e+02 ];

%-- Image #14:
omc_14 = [ -1.851274e+00 ; -1.877057e+00 ; 8.976060e-01 ];
Tc_14  = [ 2.541597e+02 ; -1.994536e+02 ; 2.706188e+03 ];
omc_error_14 = [ 4.291568e-02 ; 3.891222e-02 ; 6.033969e-02 ];
Tc_error_14  = [ 1.822632e+02 ; 7.425046e+01 ; 1.247118e+02 ];

