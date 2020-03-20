%separate frequency at ratio = 0.1
I = im2double(imread('lena.jpg'));
ratio = 0.1;

[low_pass_img, high_pass_img]= separate_frequency(I, ratio);

figure, imshow(low_pass_img);
figure, imshow(high_pass_img + 0.5);
imwrite(low_pass_img, 'lena_low_0.1.jpg');
imwrite(high_pass_img + 0.5, 'lena_high_0.1.jpg');




%separate frequency at ratio = 0.2
I = im2double(imread('lena.jpg'));
ratio = 0.2;

[low_pass_img, high_pass_img]= separate_frequency(I, ratio);

figure, imshow(low_pass_img);
figure, imshow(high_pass_img + 0.5);
imwrite(low_pass_img, 'lena_low_0.2.jpg');
imwrite(high_pass_img + 0.5, 'lena_high_0.2.jpg');




%Hybrid: low-Marilyn high-Einstein
I = im2double(imread('marilyn.jpg'));
I2 = im2double(imread('einstein.jpg'));
ratio = 0.05;
img_merged = hybrid(I, I2, ratio);
figure, imshow(img_merged);
imwrite(img_merged, 'hybrid_1.jpg');




%Hybrid: low-Einstein high-Marilyn
I = im2double(imread('einstein.jpg'));
I2 = im2double(imread('marilyn.jpg'));
ratio = 0.05;
img_merged = hybrid(I, I2, ratio);
figure, imshow(img_merged);
imwrite(img_merged, 'hybrid_2.jpg');



%Color Frequency Map - New York
I3 = im2double(imread('new_york.jpg'));
frequency_map = visualization(I3);
imwrite(frequency_map, 'new_york_frequency.jpg');



%Color Frequency Map - New York
I4 = im2double(imread('flowers.jpg'));
frequency_map = visualization(I4);
imwrite(frequency_map, 'flowers_frequency.jpg');