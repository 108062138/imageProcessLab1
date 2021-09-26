clear;
close all;
originalImage = imread('Fig0222(b)(cameraman).tif'); %read
disp('initial process!')
resizeImage_replicationRes = resizeImage_replication(originalImage,1/2);
reduceIntensityLevelRes =  reduceIntensityLevel(originalImage,3);
subplot(1,3,1);imshow(originalImage);title('input image');
subplot(1,3,2);imshow(reduceIntensityLevelRes);title('opt image');
subplot(1,3,3);imshow(resizeImage_replicationRes,[]);title('resized image');
disp('finish process!')
