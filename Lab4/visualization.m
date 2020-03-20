function frequency_map = visualization(I)

frequency_map = fftshift(fft2(I));
figure, imagesc(log(abs(frequency_map) + 1)), colormap jet;

end