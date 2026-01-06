function [summa, index] = max_sum(v,n)
if n>length(v)
    summa = 0;
    index = -1;
elseif n<=length(v)
    v_sum = [];
    for ii = 1:length(v)-(n-1)
        v_sum(ii) = sum(v(ii:ii+n-1));
    end
    summa = max(v_sum);
    for jj = 1:length(v_sum)
        if  v_sum(jj) == summa
            index = jj;
            break
        end
    end
end

end