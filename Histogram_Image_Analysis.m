input = imread('C:\Users\zille\Desktop\JMBE\Hair_Removal_Results\06.png');
figure,

grayImage1 = input(:, :, 1);
subplot(4,2,1)
imshow(grayImage1);
title('Red Channel Dermoscopic Image');
subplot(4,2,2)
[countsR, grayLevelsR] = imhist(grayImage1);
maxGLValueR = find(countsR > 0, 1, 'last');
maxCountR = max(countsR);
bar(countsR, 'r');
grid on;
xlabel('Gray Levels');
ylabel('Pixel Count');
title('Histogram of Red Band');

grayImage2 = input(:, :, 2);
subplot(4,2,3)
imshow(grayImage2);
title('Green Channel Dermoscopic Image');
subplot(4,2,4)
[countsG, grayLevelsG] = imhist(grayImage2);
maxGLValueG = find(countsG > 0, 1, 'last');
maxCountG = max(countsG);
bar(countsG, 'g');
grid on;
xlabel('Gray Levels');
ylabel('Pixel Count');
title('Histogram of Green Band');

grayImage3 = input(:, :, 3);
subplot(4,2,5)
imshow(grayImage3);
title('Blue Channel Dermoscopic Image');
subplot(4,2,6)
[countsB, grayLevelsB] = imhist(grayImage3);
maxGLValueB = find(countsB > 0, 1, 'last');
maxCountB = max(countsB);
bar(countsB, 'b');
grid on;
xlabel('Gray Levels');
ylabel('Pixel Count');
title('Histogram of Blue Band');

grayImage4= rgb2gray(input);
subplot(4,2,7)
imshow(grayImage4);
title('GrayScale Dermoscopic Image');
subplot(4,2,8)
[countsK, grayLevelsK] = imhist(grayImage4);
maxGLValueK = find(countsK > 0, 1, 'last');
maxCountK = max(countsK);
bar(countsK, 'k');
grid on;
xlabel('Gray Levels');
ylabel('Pixel Count');
title('Histogram of Grayscale Image');

maxR = max(countsR);
minR = min(countsR);
maxG = max(countsG);
minG = min(countsG);
maxB = max(countsB);
minB = min(countsB);
