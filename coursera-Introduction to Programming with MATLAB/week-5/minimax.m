function [mmr,mmm] = minimax(M)
m=M'
rowmax_each=max(m);
rowmin_each=min(m);
mmr = rowmax_each-rowmin_each
%row1max = max(M(1,:));
%row1min = min(M(1,:));
%row1 = row1max-row1min;
%row2max = max(M(2,:));
%row2min = min(M(2,:));
%row2 = row2max-row2min;
%row3max = max(M(3,:));
%row3min = min(M(3,:));
%row3 = row3max-row3min;
%mmr = [row1 row2 row3];

rowmax = max(max(M));
rowmin = min(min(M));
row = rowmax-rowmin;
mmm=row;
end
