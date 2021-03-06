clear;
close all;

disp('initial process!')

%proj02-02
originalImage = imread('Fig0221(a)(ctskull-256).tif'); %read
subplot(1,9,1);imshow(originalImage);title('input image');
imwrite(originalImage,'originalImage.jpeg','JPEG');
reduceIntensityLevelRes =  reduceIntensityLevel(originalImage,4);
subplot(1,9,2);imshow(reduceIntensityLevelRes);title('opt image');
imwrite(reduceIntensityLevelRes,'reduceIntensityLevelRes.jpeg','JPEG');

%proj02-03
originalImage = imread('Fig0220(a)(chronometer 3692x2812  2pt25 inch 1250 dpi).tif'); %read
subplot(1,9,3);imshow(originalImage);title('input image');
imwrite(originalImage,'resizeImage_replicationResOri.jpeg','JPEG');
resizeImage_replicationRes_0_1 = resizeImage_replication(originalImage,1/12.5);
resizeImage_replicationRes_0_1 = uint8(resizeImage_replicationRes_0_1);
subplot(1,9,4);imshow(resizeImage_replicationRes_0_1);title('resized repl 0.1x image');
imwrite(resizeImage_replicationRes_0_1,'resizeImage_replicationRes_0_1.jpeg','JPEG');
resizeImage_replicationRes_1_0 = resizeImage_replication(resizeImage_replicationRes_0_1,12.5);
resizeImage_replicationRes_1_0 = uint8(resizeImage_replicationRes_1_0);
subplot(1,9,5);imshow(resizeImage_replicationRes_1_0);title('resized repl 10x image');
imwrite(resizeImage_replicationRes_1_0,'resizeImage_replicationRes_1_0.jpeg','JPEG');

%proj02-04
originalImage = imread('Fig0220(a)(chronometer 3692x2812  2pt25 inch 1250 dpi).tif'); %read
subplot(1,9,6);imshow(originalImage);title('input image');
imwrite(originalImage,'resizeImage_rbilinearOri.jpeg','JPEG');
resizeImage_bilinearRes_011 = resizeImage_bilinear(originalImage, 1/12.5);
resizeImage_bilinearRes_011 = uint8(resizeImage_bilinearRes_011);
subplot(1,9,7);imshow(resizeImage_bilinearRes_011,[]);title('resized_bilinear x1/12.5 image');
imwrite(resizeImage_bilinearRes_011,'resizeImage_bilinearResx10_125.jpeg','JPEG');
resizeImage_bilinearRes_110 = resizeImage_bilinear(resizeImage_bilinearRes_011, 12.5);
resizeImage_bilinearRes_110 = uint8(resizeImage_bilinearRes_110);
subplot(1,9,8);imshow(resizeImage_bilinearRes_110,[]);title('resized_bilinear 1/12.5x12.5ximage');
imwrite(resizeImage_bilinearRes_110,'resizeImage_bilinearResx125_10.jpeg','JPEG');



disp('finish process!')
