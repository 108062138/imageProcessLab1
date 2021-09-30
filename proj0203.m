clear;
close all;

disp('initial process!');

prompt1 = 'Enter image : ';
imageName = input(prompt1, 's');
prompt2 = 'Enter scaleFactor : ';
scaleFactor = input(prompt2);

%proj02-03
originalImage = imread(imageName); %read
subplot(1,9,3);imshow(originalImage);title('input image');
imwrite(originalImage,'resizeImage_replicationResOri.jpeg','JPEG');
resizeImage_replicationRes_0_1 = resizeImage_replication(originalImage,1/scaleFactor);
resizeImage_replicationRes_0_1 = uint8(resizeImage_replicationRes_0_1);
subplot(1,9,4);imshow(resizeImage_replicationRes_0_1);title('resized repl 0.1x image');
imwrite(resizeImage_replicationRes_0_1,'resizeImage_replicationRes_0_1.jpeg','JPEG');
resizeImage_replicationRes_1_0 = resizeImage_replication(resizeImage_replicationRes_0_1,scaleFactor);
resizeImage_replicationRes_1_0 = uint8(resizeImage_replicationRes_1_0);
subplot(1,9,5);imshow(resizeImage_replicationRes_1_0);title('resized repl 10x image');
imwrite(resizeImage_replicationRes_1_0,'resizeImage_replicationRes_1_0.jpeg','JPEG');

disp('finish process!')