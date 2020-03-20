function img_merged = hybrid(I, I2, ratio)

[low_pass_I, high_pass_I]= separate_frequency(I, ratio);
[low_pass_I2, high_pass_I2]= separate_frequency(I2, ratio);

img_merged = low_pass_I + high_pass_I2;


end