%Left camera parameters
fx_rgb_l = 532.882508835719590; 
fy_rgb_l =  531.795526354738400; 
cx_rgb_l = 291.009409618044910; 
cy_rgb_l =  222.806112996766560; 
left_rgb = imread('L.jpg');
left_depth = imread('LeftDepthobjects_recscene1.jpg');

%Right camera parameters
fx_rgb_r = 601.730844251917690; 
fy_rgb_r =  581.887105857937970; 
cx_rgb_r = 219.829047509894080; 
cy_rgb_r =  254.724905544805300;  
right_rgb = imread('R.jpg');
right_depth = imread('RightDepthobjects_recscene1.jpg');

%Stereo Parameters
focalx_depth =  5.7616540758591043e+02;
focaly_depth = 5.7375619782082447e+02;
ccx_depth = 3.2442516903961865e+02;
ccy_depth = 2.3584766381177013e+02;

R =  inv([9.9998579449446667e-01, 3.4203777687649762e-03, -4.0880099301915437e-03; -3.4291385577729263e-03, 9.9999183503355726e-01, -2.1379604698021303e-03; 4.0806639192662465e-03, 2.1519484514690057e-03,  9.9998935859330040e-01]);
T = -[  2.2142187053089738e-02, -1.4391632009665779e-04, -7.9356552371601212e-03 ]';

%% Left camera
n_row = 480;
n_col = 640;
l_flag = 0;

pixel3D = zeros(n_row,n_col, 3 );
l_pcs_p = zeros(n_row * n_col, 3);
l_pcs_pc = zeros(n_row * n_col, 3);

for i = 1:n_row
    for j = 1:n_col
        pixel3D(i, j,  1) = (j - ccx_depth) * double(left_depth(i, j)) / focalx_depth;
        pixel3D(i, j, 2) = (i - ccy_depth) * double(left_depth(i, j)) / focaly_depth;
        pixel3D(i, j, 3) = double( left_depth(i, j));
        
        if pixel3D(i, j, 3) > 0
            l_pix_pix_trf = [pixel3D(i, j, 1), pixel3D(i, j, 2), pixel3D(i, j, 3)];
            l_pix_trf = R * l_pix_pix_trf' + T;
            P2Drgb_x = round(fx_rgb_l * l_pix_trf(1) / l_pix_trf(3) + cx_rgb_l);
            P2Drgb_y = round(fy_rgb_l * l_pix_trf(2) / l_pix_trf(3) + cy_rgb_l);

            if P2Drgb_x > 0 && P2Drgb_y > 0 && P2Drgb_x < n_col  && P2Drgb_y < n_row
                color = left_rgb(P2Drgb_y, P2Drgb_x, :);
                l_flag = l_flag + 1;
                
                l_pcs_p(l_flag,:) =  l_pix_trf;
                l_pcs_pc(l_flag, :) = color;
            end
        end
    end
end

l_pcs_p = l_pcs_p(1:l_flag, :);
l_pcs_pc = l_pcs_pc(1:l_flag, :);

l_pcs_pr = zeros(l_flag, 3);

translation_v = [-990.624923269488, 7.77709577344268, 301.422399148011];

rotation = [-0.00860 0.69457 -0.02751];

rotation_m = rotationVectorToMatrix(rotation);
rotation_m = inv(rotation_m);
 


for counter=1:l_flag
    l_pcs_pr(counter, :) = (rotation_m *  l_pcs_p(counter, :)' + translation_v')';
end
 
l_pcs_p = l_pcs_pr;
% pcshow(l_pcs_p, l_pcs_pc / 256.0)

%% Right camera
% UNCOMMENT WHEN NEEDED 

% n_row = 480;
% n_col = 640;
% r_flag = 0;
% 
% pixel3D = zeros(n_row,n_col, 3 );
% r_pcs_p = zeros(n_row * n_col, 3);
% r_pcs_pc = zeros(n_row * n_col, 3);
% 
% for i = 1:n_row
%     for j = 1:n_col
%         pixel3D(i, j, 1) = (j - ccx_depth) * double(right_depth(i, j)) / focalx_depth;
%         pixel3D(i, j, 2) = (i - ccy_depth) * double(right_depth(i, j)) / focaly_depth;
%         pixel3D(i, j, 3) = double( right_depth(i,j));
%         
%         if pixel3D(i, j,3) > 0
%             r_pix_trf = [pixel3D(i, j, 1), pixel3D(i, j, 2), pixel3D(i, j, 3)];
%             r_trf = R * r_pix_trf' + T;
%             P2Drgb_x = round(fx_rgb_r * r_trf(1) / r_trf(3) + cx_rgb_r);
%             P2Drgb_y = round(fy_rgb_r * r_trf(2) / r_trf(3) + cy_rgb_r);
% 
%             if P2Drgb_x > 0 && P2Drgb_y > 0 && P2Drgb_x < n_col  && P2Drgb_y < n_row
%                 color = right_rgb(P2Drgb_y, P2Drgb_x, :);
%                 r_flag = r_flag + 1;
%                 
%                 r_pcs_p(r_flag,:) =  r_trf;
%                 r_pcs_pc(r_flag, :) = color;
%             end
%         end
%     end
% end
% 
% r_pcs_p = r_pcs_p(1:r_flag, :);
% r_pcs_pc = r_pcs_pc(1:r_flag, :);
% pcshow(r_pcs_p, r_pcs_pc / 256.0)

%% Right n Left camera points

[ls, lc] = size(l_pcs_p); 
[rs, rc] = size(r_pcs_p);
s_total = ls + rs; 


asp= zeros(s_total, 3);
asp_c= zeros(s_total, 3);

flag = 0;
for i= 1:ls
    flag = flag + 1;
    asp(flag, :)= l_pcs_p(i, :);
    asp_c(flag, :)= l_pcs_pc(i, :);
end
    
%flag = 0;
for i= 1:rs
    flag = flag + 1;
    asp(flag, :)= r_pcs_p(i, :);
    asp_c(flag, :)= r_pcs_pc(i, :);
end

%pcshow(asp_c, asp / 256.0)
pcshow(asp, asp_c / 256.0)




