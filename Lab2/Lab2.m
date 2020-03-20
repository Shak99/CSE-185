%Forward Warping

I = imread('01.jpg');
I(1,1);
[x,y,z] = size(I);
%get center of image
x0 = x./2;
y0 = y./2;
I2 = zeros(x, y, z, 'uint8');
theta = -pi/4;

for x1 = 1:300
    for y1 = 1:400
        
        
        x2 = round(cos(theta)*(x1-x0)+sin(theta)*(y1-y0)+x0);
        y2 = round(-sin(theta)*(x1-x0)+cos(theta)*(y1-y0)+y0);

        if (0 < x2 && x2 < 301) && (0 < y2 && y2 < 401)
            I2(x2, y2, :) = I(x1, y1, :);
        end
        
    end
end

figure, imshow(I2);
imwrite(I, 'rotate_0.jpg');



%Backward Warping

I = imread('01.jpg');
I(1,1);
[x,y,z] = size(I);
%get center of image
x0 = x./2;
y0 = y./2;
I3 = zeros(x, y, z, 'uint8');
theta = -pi/4;

for x2 = 1:300
    for y2 = 1:400
        
        
        x1 = round(cos(theta)*(x2-x0)-sin(theta)*(y2-y0)+x0);
        y1 = round(sin(theta)*(x2-x0)+cos(theta)*(y2-y0)+y0);

        if (0 < x1 && x1 < 301) && (0 < y1 && y1 < 401)
            I3(x2, y2, :) = I(x1, y1, :);
        end
        
    end
end

figure, imshow(I3);
imwrite(I, 'rotate_1.jpg');




%Median Filter for patch 3

II = im2double(imread('lena_noisy.jpg'));

patch_size = [3, 3];
new_II = zeros(size(II));

img_median = median_filter(II, patch_size, new_II);
figure, imshow(img_median);
imwrite(img_median, 'median_0.jpg');



%Median Filter for patch 5
III = im2double(imread('lena_noisy.jpg'));

patch_size = [5, 5];
new_III = zeros(size(III));

img_median = median_filter(III, patch_size, new_III);
figure, imshow(img_median);
imwrite(img_median, 'median_1.jpg');


