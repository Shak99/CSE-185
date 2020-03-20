%Gaussian and Laplacian Pyramid
I = im2double(imread('lena.jpg'));
sigma = 2;
hsize = 7;
scale = 5;


%Gaussian Pyramid
pic = I;
%size = 1/4;
for s = 1:scale
    % Gaussian Filter
    %Gauss = guassian_filter_lab5(pic, hsize, sigma);
    Gauss = fspecial('gaussian', hsize, sigma);
    Gauss = imfilter(pic, Gauss);

    %Do I need to change location of line???? %imwrite(I, sprintf('Gaussian_scale%d.jpg', s));
    %down-sampling
    pic = Gauss;
    if s > 1
    pic = imresize(pic, 1/2);
    end
   
    figure, imshow(pic);
    imwrite(pic, sprintf('Gaussian_scale%d.jpg', s));
    
end

    
%Laplacian PyramidI = im2double(imread('lena.jpg'));
sigma = 2;
hsize = 7;
scale = 5;

pic = I;
for s = 1:scale
    
    Gauss = fspecial('gaussian', hsize, sigma);
    Gauss = imfilter(pic, Gauss);
    Lap_filter = pic - Gauss;

    pic = Lap_filter;
    if s > 1
    pic = imresize(Lap_filter, 1/2);
    end
    figure, imshow(pic+0.5);
    imwrite(pic+0.5, sprintf('Laplacian_scale%d.jpg', s));
    
end