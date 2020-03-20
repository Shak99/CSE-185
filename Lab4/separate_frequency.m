function [low_pass_img, high_pass_img] = separate_frequency(I, ratio)

x = size(I, 2);
y = size(I,1);
%mask = zeros(size(I));

frequency_map = fft2(I); %inpput image
frequency_map_shifted = fftshift(frequency_map); %shift freq map

%compute low frequency

        x1 = round(x/2) - (ratio * x);
        y1 = round(y/2) - (ratio * y);
        x2 = round(x/2) + (ratio * x);
        y2 = round(y/2) + (ratio * y);

mask = zeros(size(I));
mask(y1:y2, x1:x2, :) = 1;


%separate low/high freq
low_frequency_map_shifted = frequency_map_shifted .* mask;
high_frequency_map_shifted = frequency_map_shifted .* (1-mask);


%shift pic back
low_frequency_map = ifftshift(low_frequency_map_shifted);
high_frequency_map = ifftshift(high_frequency_map_shifted);


low_pass_img = real(ifft2(low_frequency_map));
high_pass_img = real(ifft2(high_frequency_map));

end