function [output, match] = template_matching_SSD(I, temp, threshold)

output = I;

limit_u = size(I, 2);
limit_v = size(I,1);
shift_u = size(temp,2);
shift_v = size(temp,1);

for u = 1+shift_u:limit_u-shift_u
    for v = 1+shift_v:limit_v-shift_v
    
    x1 = u - floor(shift_u/2);
    x2 = u + floor(shift_u/2);
    y1 = v - floor(shift_v/2);
    y2 = v + floor(shift_v/2);
    
    patch = I(y1:y2, x1:x2);
    
    %SSD
    value = sum(sum((patch-temp).^2));
    output(v,u) = value;
    
    end
end

match = (output < threshold);

end