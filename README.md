# 3D-reconstruction
In computer vision and computer graphics, 3D reconstruction is the process of capturing
the shape and appearance of real objects.3D data acquisition and object reconstruction can
be performed using stereo image pairs. The images acquisition can occur from a multitude of
methods including 2D images, acquired sensor data and on site sensors.
The process of 3D reconstruction has been divided into 3 main steps:
1. Image Acquisition
2. Camera Calibration
3. 3D-Reconstruction
Image Acquisition:
Images were acquired keeping the object of interest as a checker-board. The checker-board
images were captured with varying orientation and depth of the checker-board with respect to
the Kinect sensor.
Total images captured:
-Left Camera: 14 images * 2 (Depth and RGB images) [Leftx.jpg]
-Right Camera: 14 images * 2 (Depth and RGB images) [Rightx.jpg]
Another set of images were acquired keeping various object of interest with varying shapes and
dimensions. These images are used for 3D-reconstruction later.
Total images captured:
-Left Camera: 1 image * 2 (Depth and RGB images) [L scene.jpg]
-Right Camera: 1 image * 2 (Depth and RGB images) [R scene.jpg]
Camera Calibration:
the toolbox provided by Caltech is used for calibration.
Left Camera Calibration:
fc = [532.882508835719590; 531.7955263547384];
cc = [291.009409618044910; 222.806112996766560];
alpha c = 0.000000000000000;
kc = [0.279255336452240; -0.967616941336424; -0.038740716990524;
-0.017697415980067; 0.000000000000000];
fc error = [26.240714919577247; 27.188791681602751];
cc error = [25.451832195362091; 17.250244324461189];
 alpha c error = 0.000000000000000;
kc error = [0.129897320544029;1.211804978228078; 0.015802103209377; 0.020561726926303; 0.000000000000000];
Right Camera Calibration:
 fc = [601.730844251917690; 581.887105857937970];
 cc = [219.829047509894080; 254.724905544805300];
 alpha c = 0.000000000000000;
 kc = [ 0.251753728073581; 0.437903627546445; -0.005312312783367;-0.091730786720801; 0.000000000000000];
 fc error = [44.747175869776598; 32.270952761463199];
cc error = [40.413434634510679; 15.768174509580676];
 alpha c error = 0.000000000000000;
kc error = [0.128766967190221; 0.562307363123869;0.010381112643499; 0.034758167484828; 0.000000000000000];
To align RGB and Depth image from Kinect, we use the depth camera intrinsic values.
Each pixel (x d,y d) of the depth camera can be projected to metric 3D space using the following
formulas:
-Pixel3D:x = (xd - cxd) *depth(xd, yd)/fxd
-Pixel3D:y = (xd - cyd) * depth(xd, yd)/fyd
-Pixel3D:z = depth(xd, yd)
We then use R (Rotation matrix for Right camera wrt to the left camera) and T (Translation
matrix) to move from IR 3D camera reference to 3D RGB camera reference, using the formula:
Pixel3D = R * pixel3D + T
