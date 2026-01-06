function matrix = sparse2matrix(cellinput)
value = cellinput{2};
matrix = zeros(cellinput{1})+value;
for i = 3:length(cellinput)
    j = cellinput{i};
    matrix(j(1),j(2)) = j(3);
end
end