function output = guassian_filter(I, hsize, sigma)

H = fspecial('gaussian', hsize, sigma);
[rows, cols] = size(I);
new_I = zeros(rows+(hsize-1), cols+((hsize-1)));
new_I(1+1:rows+1, 1+1:cols+1) = I;

    for i = 1:rows
        for j = 1:cols
        
            S(i,j, :) = sum(sum(H.*new_I(i:i+(hsize-1), j:j+(hsize-1))));
  
        end
    end

new_I = S;

output = new_I;


end