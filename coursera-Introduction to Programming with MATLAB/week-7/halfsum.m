function summa = halfsum(A)
s = size(A);
summa = 0;
col_ind=1;
for n = 1:s(1)
    if (col_ind) > s(2)
        break
    end
    
    for m = col_ind:s(2)
        summa = summa+A(n,m);
    end    
    col_ind = col_ind+1;
end