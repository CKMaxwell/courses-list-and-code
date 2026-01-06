function  [T]= trio(n,m)
T(1:n,1:m)=1;
T(n+1:2*n,1:m)=2;
T(2*n+1:3*n,1:m)=3;
end