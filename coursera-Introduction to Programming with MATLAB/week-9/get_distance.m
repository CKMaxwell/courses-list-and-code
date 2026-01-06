function distance = get_distance(a,b)
[txt,num,every_thing] = xlsread('Distances.xlsx');
cityname = every_thing(2:length(every_thing),1);
judge1 = strcmp(cityname,a);
judge2 = strcmp(cityname,b);
if sum(judge1)==1 & sum(judge2)==1
    for i = 2:length(every_thing)
        if strcmp(every_thing{i,1},a)
            index1 = i;
        elseif strcmp(every_thing{1,i},b)
            index2 = i;
        end
    end
    distance = every_thing{index1,index2};
else
    distance = -1;
end

end