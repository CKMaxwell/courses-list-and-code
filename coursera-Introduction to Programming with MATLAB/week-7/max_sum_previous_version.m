function [summa, index] = max_sum(v,n)
if n>length(v)
    summa = 0;
    index = -1;
elseif n<=length(v)
    v_new = v;
    temp = v_new(1);
    for ii = 1:length(v_new)-1
            for  jj = ii+1:length(v_new)
                if v_new(ii) < v_new(jj);
                    temp = v_new(ii);
                    v_new(ii) = v_new(jj);
                    v_new(jj) = temp;
                end
            end
    end
    summa = 0;
    for x =1:n
        summa = summa + v_new(x);
    end
    
    v_new = v_new(1:n);

    check = 0;
    for index = 1:length(v)
        for index_seq = 1: length(v_new)
            if v(index) == v_new(index_seq)
                check = 1;
                break
            end
        end
        if check ==1
            break
        end
    end
end


end