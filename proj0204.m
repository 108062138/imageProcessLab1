clear;
close all;

disp('initial process!');

prompt1 = 'Enter image : ';
imageName = input(prompt1, 's');
prompt2 = 'Enter scaleFactor : ';
scaleFactor = input(prompt2);

%proj02-04
originalImage = imread(imageName); %read
subplot(1,9,6);imshow(originalImage);title('input image');
imwrite(originalImage,'resizeImage_rbilinearOri.jpeg','JPEG');
resizeImage_bilinearRes_011 = resizeImage_bilinear(originalImage, 1/scaleFactor);
resizeImage_bilinearRes_011 = uint8(resizeImage_bilinearRes_011);
subplot(1,9,7);imshow(resizeImage_bilinearRes_011,[]);title('resized_bilinear x1/12.5 image');
imwrite(resizeImage_bilinearRes_011,'resizeImage_bilinearResx10_125.jpeg','JPEG');
resizeImage_bilinearRes_110 = resizeImage_bilinear(resizeImage_bilinearRes_011, scaleFactor);
resizeImage_bilinearRes_110 = uint8(resizeImage_bilinearRes_110);
subplot(1,9,8);imshow(resizeImage_bilinearRes_110,[]);title('resized_bilinear 1/12.5x12.5ximage');
imwrite(resizeImage_bilinearRes_110,'resizeImage_bilinearResx125_10.jpeg','JPEG');



disp('finish process!')