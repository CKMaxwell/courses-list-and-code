function [charnum] = char_counter(fname, character)
fid = fopen(fname, 'a+');
txt = char(fread(fid));
if fid<0
    charnum = -1;
    return
elseif isa(character, 'char') ~=1
    charnum = -1;
    return
end
charnum = 0;
%length(char(txt));
for i = 1:length(char(txt))
    txt(i);
    if char(txt(i)) == char(character)
        charnum = charnum+1;
    end
end

end