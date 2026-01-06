function indices = saddle(M)
[row_M, col_M] = size(M);
if row_M ~= 1 && col_M ~=1
    min_col = min(M);
    max_row = max(M');
    indices = [];
    count = 1;
    for i = 1:col_M
        for j =1:row_M
            if max_row(j) == min_col(i)
                indices(count,1) = j;
                indices(count,2) = i;
                count = count + 1;
            end
        end
    end
elseif row_M == 1 && col_M ==1
    indices(1,1) = 1;
    indices(1,2) = 1;
    return
elseif row_M == 1 && col_M ~=1
    max_row = max(M);
    indices = [];
    count = 1;
    for k = 1:length(M)
        if M(k) == max_row
            indices(count,1) = 1;
            indices(count,2) = k;
            count = count + 1;
        end
    end
    return
elseif row_M ~= 1 && col_M ==1
    min_col = min(M);
    indices = [];
    count = 1;
    for n = 1:length(M)
        if M(n) == min_col
            indices(count,1) = n;
            indices(count,2) = 1;
            count = count + 1;
        end
    end
    return
end
end