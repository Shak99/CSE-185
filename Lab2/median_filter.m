function output = median_filter(II, patch_size, new_II)

%we have to make a shift for when we are out of bounds with the picture

%patch size 3
if patch_size == 3
    shift = 1; %3/2= 1.5 which basically is 1 therefore the shift is 1
    
    for x = 1+shift:size(II, 2)-shift %stays in the bounds
        for y = 1+shift:size(II, 1)-shift
        
            x1 = x-shift;
            y1 = y-shift;
            x2 = x+shift;
            y2 = y+shift;
            
            newSize = II(x1:x2, y1:y2);
            newSize = newSize(:); %turn into a vector to get the median
            medValue = median(newSize);
            new_II(x,y) = medValue;
              
        end
    end
    
    output = new_II;
       
end


%patch size 5
if patch_size == 5
    shift = 2; %5/2= 2.5 which basically is 2 therefore the shift is 1
    
    for x = 1+shift:size(II, 2)-shift %stays in the bounds
        for y = 1+shift:size(II, 1)-shift
        
            x1 = x-shift;
            y1 = y-shift;
            x2 = x+shift;
            y2 = y+shift;
            
            newSize = II(x1:x2, y1:y2);
            newSize = newSize(:); %turn into a vector to get the median
            medValue = median(newSize);
            new_II(x,y) = medValue;
              
        end
    end
    
    output = new_II;
       
end


end