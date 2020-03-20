
%Sobel filter HY
I = im2double(imread('lena.jpg'));
H = [1,0,-1; 2,0,-2; 1,0,-1]; 

img_sobel = sobel_filter(I, H);
figure, imshow(img_sobel);
imwrite(img_sobel, 'sobel_y.jpg');



%Sobel filter HX
I = im2double(imread('lena.jpg'));
H = [1,2,1; 0,0,0; -1,-2,-1]; %horizontal edge

img_sobel = sobel_filter(I, H);
figure, imshow(img_sobel);
imwrite(img_sobel, 'sobel_x.jpg');



%2D to 1D filter(HX) colxrow
I = im2double(imread('lena.jpg'));
H = [1,1,1; 2,2,2; 1,1,1]; 

twoD = 1;

img_sobel = median_filter(I, H, twoD);
figure, imshow(img_sobel);
imwrite(img_sobel, 'sobel_cr.jpg');



%2D to 1D filter(HX) rowxcol
I = im2double(imread('lena.jpg'));
H = [1,0,-1; 1,0, -1; 1,0,-1]; 

twoD = 2;

img_sobel = median_filter(I, H, twoD);
figure, imshow(img_sobel);
imwrite(img_sobel, 'sobel_rc.jpg');



%Gaussian 5
I = im2double(imread('lena.jpg'));
hsize = 5;
sigma = 2;

img_gaussian = gaussian_filter(I, hsize, sigma);
figure, imshow(img_gaussian);
imwrite(img_gaussian, 'gaussian_5.jpg');



%Gaussian 9
I = im2double(imread('lena.jpg'));
hsize = 9;
sigma = 4;

img_gaussian = gaussian_filter(I, hsize, sigma);
figure, imshow(img_gaussian);
imwrite(img_gaussian, 'gaussian_9.jpg');

