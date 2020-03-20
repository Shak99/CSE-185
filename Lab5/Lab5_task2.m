%Template Matching SSD

output1a = 'einstein1_25_SSD_output';
match1a = 'einstein1_25_SSD_match';
output1b = 'einstein1_35_SSD_output';
match1b = 'einstein1_35_SSD_match';

output2a = 'einstein2_25_SSD_output';
match2a = 'einstein2_25_SSD_match';
output2b = 'einstein2_35_SSD_output';
match2b = 'einstein2_35_SSD_match';

output3 = 'einstein1_normcorr_output';
match3 = 'einstein1_normcorr_match';
output4 = 'einstein2_normcorr_output';
match4 = 'einstein2_normcorr_match';


I = im2double(imread('einstein1.jpg'));
II = im2double(imread('einstein2.jpg'));
temp = im2double(imread('template.jpg'));
threshold1 = 25;
threshold2 = 35;


%This is all for einstein1 image w/ both thresholds
[SSD_output1a, SSD_match1a] = template_matching_SSD(I, temp, threshold1);
[SSD_output1b, SSD_match1b] = template_matching_SSD(I, temp, threshold2);

figure, imshow(SSD_output1a ./ max(SSD_output1a(:)));
figure, imshow(SSD_match1a);
figure, imshow(SSD_output1b ./ max(SSD_output1b(:)));
figure, imshow(SSD_match1b);

imwrite(SSD_output1a ./ max(SSD_output1a(:)), sprintf('%s.jpg', output1a));
imwrite(SSD_match1a, sprintf('%s.jpg', match1a) );
imwrite(SSD_output1b ./ max(SSD_output1b(:)), sprintf('%s.jpg', output1b));
imwrite(SSD_match1b, sprintf('%s.jpg', match1b));


%}



%This is all for einstein2 image w/ both thresholds
[SSD_output2a, SSD_match2a] = template_matching_SSD(I, temp, threshold1);
[SSD_output2b, SSD_match2b] = template_matching_SSD(I, temp, threshold2);

figure, imshow(SSD_output2a ./ max(SSD_output2a(:)));
figure, imshow(SSD_match2a);
figure, imshow(SSD_output2b ./ max(SSD_output2b(:)));
figure, imshow(SSD_match2b);

imwrite(SSD_output2a ./ max(SSD_output2a(:)), sprintf('%s.jpg', output2a));
imwrite(SSD_match2a, sprintf('%s.jpg', match2a) );
imwrite(SSD_output2b ./ max(SSD_output2b(:)), sprintf('%s.jpg', output2b));
imwrite(SSD_match2b, sprintf('%s.jpg', match2b));


%}

%//////////////////////////////////////////////////////////////////////////
%Template Matching Normcorr

threshold = 0.5;

[output1, match1] = template_matching_normcorr(I, temp, threshold);
[output2, match2] = template_matching_normcorr(II, temp, threshold);


figure, imshow(output1./max(output1(:)));
figure, imshow(match1);
figure, imshow(output2./max(output2(:)));
figure, imshow(match2);

imwrite(output1 ./ max(output1(:)), sprintf('%s.jpg', output3));
imwrite(match1, sprintf('%s.jpg', match3));
imwrite(output2 ./ max(output2(:)), sprintf('%s.jpg', output4));
imwrite(match2, sprintf('%s.jpg', match4));


