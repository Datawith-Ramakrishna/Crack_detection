clc;
close all
% Load the image
image = imread("image8.5.jpg");

% Display the original image
imshow(image);
title('Original Image');

gray_Img = rgb2gray(image);
% Convert the image to double for calculation
double_image = im2double(gray_Img);

% Calculate the mean intensity
mean_intensity = mean(double_image(:));

% Shrink the contrast using a custom formula
alpha = 0.5; % Adjust alpha to shrink the contrast (0 < alpha < 1)
contrast_shrunk_custom = mean_intensity + (double_image - mean_intensity) * alpha;

% Display the result
figure;
imshow(contrast_shrunk_custom);

