function output = blur(img,w)
[y,x] = size(img);
output = uint8([]);
for i = 1:x     % go through column
    for j =1:y  % go through row
        % work on each element
        temp = [];
        count = 1;
        for ii = i-w:i+w
            for jj = j-w:j+w
                if ii >0 && jj>0 && ii<=x && jj<=y
                    temp(count) =  img(jj,ii);
                    count = count+1;            
                end
            end
        end
        output(j,i) = uint8(mean(temp));        
        % finish 1 element process
    end
end


end