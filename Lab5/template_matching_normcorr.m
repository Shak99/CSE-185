function[output, match] = template_matching_normcorr(I, template, threshold)

%puv is patch
%H is template

shift_u = size(template,2);
shift_v = size(template,1);
limit_u = size(I,2);
limit_v = size(I,1);

for u = 1+shift_u:limit_u-shift_u
    for v = 1+shift_v:limit_v-shift_v
        
        x1 = u - floor(shift_u/2);
        x2 = u + floor(shift_u/2);
        y1 = v - floor(shift_v/2);
        y2 = v + floor(shift_v/2);
    
        patch = I(y1:y2, x1:x2);
        
        puv = patch(:);
        H = template(:);
        
        puv_prime = puv - mean(puv);
        H_prime = H - mean(H);
        
        puv_doubPrime = puv_prime/norm(puv_prime);
        H_doubPrime = H_prime/norm(H_prime);
        
        
        normcorr = dot(puv_doubPrime, H_doubPrime);
        
        
        %Normalized Cross-Correlation
        value = normcorr;
        output(v,u) = value;
        
    end
end

match = (output > threshold);

end