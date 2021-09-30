clear;
close all;

disp('initial process!')
prompt1 = 'Enter image : ';
imageName = input(prompt1, 's');
prompt2 = 'Enter Level : ';
intensityLevel = input(prompt2);

%proj02-02
originalImage = imread(imageName); %read
subplot(1,9,1);imshow(originalImage);title('input image');
imwrite(originalImage,'originalImage.jpeg','JPEG');
reduceIntensityLevelRes =  reduceIntensityLevel(originalImage,intensityLevel);
subplot(1,9,2);imshow(reduceIntensityLevelRes);title('opt image');
imwrite(reduceIntensityLevelRes,'reduceIntensityLevelRes.jpeg','JPEG');

disp('finish process!');