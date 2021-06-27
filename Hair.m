%% Hair Removal Algorithm
clear all;close all;clc;
%%
input = imread('D:\MATLAB\Skin_Cancer\Ham_1\ISIC_0024421.jpg');
figure,
subplot(1,3,1)
imshow(input);
title("Dermoscopic Image");
input1 = rgb2gray(input);
subplot(1,3,2)
imshow(input1);
title("Gray Scale Image");
grayImage = input(:, :, 3);
subplot(1,3,3)
imshow(grayImage);
title("Extracted Blue Channel Image");
%% Hair Locations Extracitons using BottonHat Operation
I = grayImage;
se = strel('disk',5);
hairs = imbothat(I,se);
figure,  
title("Hair Locations");
imshow(hairs)

BW = hairs > 15;
BW2 = imerode(BW,strel('disk',2));
BW1 = imdilate(BW,strel('line',3,45));
figure
subplot(1,3,1)
imshow(BW)
title("Thresholded");
subplot(1,3,2)
imshow(BW1)
title("Enhanced Hair Locations");
BW2 = double(BW1);
J = imnoise(BW2,'salt & pepper',0.02);
K = medfilt2(J,[1 2]);
subplot(1,3,3)
imshow(K)
title("Noise removal");
replacedImage = regionfill(I,BW2);
replacedImage = medfilt2(replacedImage,[2 2]);
figure
subplot(1,2,1)
imshow(I)
title("Dermoscopic Image");
subplot(1,2,2)
imshow(replacedImage)
title("Hair Removed Dermoscopic Image");