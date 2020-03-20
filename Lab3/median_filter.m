function output = median_filter(I, kernal, twoD)

[rows, cols] = size(I);

if twoD == 1
    
    kernal2 = [1, 0, -1];
    tic
    new_I = zeros(rows+2, cols+2);
    new_I(1+1:rows+1, 1+1:cols+1) = I;
    output = zeros(rows+2, cols+2);
    output2 = zeros(rows, cols);
    
    for i = 1:rows
        for j = 1:cols
            
            output(i,j:j+2) = sum(kernal.*new_I(i:i+2, j:j+2), 1);
            output2(i, j) = sum(kernal2.*output(i,j:j+2));
            
        end
        toc
    end
    new_I = output2;
    
end


if twoD == 2
    kernal2 = [1,2,1];
    tic
    new_I = zeros(rows+2, cols+2);
    new_I(1+1:rows+1, 1+1:cols+1) = I;
    output = zeros(rows+2, cols+2);
    output2 = zeros(rows, cols);
    
    for i = 1:rows
        for j = 1:cols
            
            output(i:i+2, j) = sum(kernal.*new_I(i:i+2, j:j+2), 2);
            output2(i,j) = sum(kernal2'.*output(i:i+2, j));
            
        end
        toc
    end
    new_I = output2;    
    
end



output = new_I;

end



