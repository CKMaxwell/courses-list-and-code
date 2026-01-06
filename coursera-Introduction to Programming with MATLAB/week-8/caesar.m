function coded = caesar(charactor, shifted)
for i = 1:length(charactor)
    k1 = charactor(i)-32;
    k2 = mod(charactor(i)-32+shifted,(126-32+1));
    coded(i) = (k2+32);
end
coded = char(coded);
end