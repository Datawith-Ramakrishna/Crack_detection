clc;
close all

% Reading Input Image
input_Img=imread("image6.4.jpeg");

% CONVERTING INTO GRAY IMAGE
gray_Img = rgb2gray(input_Img);

% Visualizing Grey Image and Its Histogram
figure,imshow(gray_Img);
title('Gray Image');

figure,imhist(gray_Img);
title('histogram'),

% Applying Contrast Streaching with boundatry values of histogram ..
 enhImg = imadjust(gray_Img,[0.2,0.8],[0.00,1.00]);
% Visualizing Enhanced Image and Its Histogram
 figure,imshow(enhImg);
 title('Enhanced Image');
 % Binarization
b = gray_Img;
[x,y]=size(b);

% Using Nested for loops to seperate Foreground and Background Pixel
% Values
for i=1:x
    for j=1:y
        f=b(i,j);
        % Using 80 as threshold
       if f<=80
           b(i,j)=255;
       elseif f>80 && f<255
           b(i,j)=0;
       end
    end
end
binimg = b;
figure,imshow(binimg);
title('Binary Image');

% Assigning the variable to Binary Image Variable
% APPLYING MORPHOLOGICAL OPERATIONS
% 1.Opening

SE=strel('disk',4);
open_Img = imopen(binimg,SE);


% 2.Closing

closing_Img = imclose(open_Img,SE);
figure,imshow(closing_Img);
title('Filtered Mask')

% Now, perform connected component analysis (CCA) on the binary image 'cloimg'
cca = bwconncomp(closing_Img);  % Calculate connected components

% Get connected component properties, such as area and bounding box
areas = regionprops(cca, 'Area', 'BoundingBox');

% Extract the areas as the feature vector
featureVector = cat(1, areas.Area);

% Display the original image with bounding boxes around detected cracks
figure;
imshow(input_Img);
title('Original Image with Detected Cracks');

% Loop through each connected component and draw bounding boxes
for i = 1:length(areas)
    bb = areas(i).BoundingBox;
    rectangle('Position', bb, 'EdgeColor', 'r', 'LineWidth', 2);
end

% Displaying the number of detected cracks
Cracks = length(areas);
fprintf('Number of detected cracks: %d\n', Cracks);

% Now, you have 'featureVector' with the area of connected components as the feature for further analysis.
