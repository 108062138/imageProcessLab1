clear;
close all;
originalImage = imread('Fig0222(b)(cameraman).tif'); %read
subplot(1,3,1);imshow(originalImage);title('input image');
disp('initial process!')
%proj02-02
reduceIntensityLevelRes =  reduceIntensityLevel(originalImage,2);
subplot(1,3,2);imshow(reduceIntensityLevelRes);title('opt image');
%proj02-03
%resizeImage_replicationRes = resizeImage_replication(originalImage,1/2);
%subplot(1,3,3);imshow(resizeImage_replicationRes,[]);title('resized_repl image');
%proj02-04
%resizeImage_bilinearRes = resizeImage_bilinear(originalImage, 3);
%subplot(1,3,2);imshow(resizeImage_bilinearRes,[]);title('resized_bilinear image');
disp('finish process!')
