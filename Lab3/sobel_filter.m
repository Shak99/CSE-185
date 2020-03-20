function output = sobel_filter(I, kernal)

    [rows, cols] = size(I);

    new_I = zeros(rows+2, cols+2);
    new_I(1+1:rows+1, 1+1:cols+1) = I;

    for i = 1:rows
        for j = 1:cols
        
            S(i,j, :) = sum(sum(kernal.*new_I(i:i+2, j:j+2)));
  
        end
    end

    new_I = S;

    output = new_I;

end



