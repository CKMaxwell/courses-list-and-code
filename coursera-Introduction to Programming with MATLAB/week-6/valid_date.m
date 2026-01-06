function [valid] = valid_date(year, month, day)
if isscalar(year) == 1 && isscalar(month) == 1 && isscalar(day) == 1
    valid = true;
else
    valid = false;
    return
end

leap = 0;
if month==4 || month==6 || month==9 || month==11
    if day >30 || day<1
        valid = false;
    end
elseif month == 1 || month == 3||month == 5||month == 7||month == 8||month == 10||month == 12
    if day >31 || day<1
        valid = false;
    end
elseif month == 2
    if mod(year,4) == 0 
		leap = 1;
        if mod(year,100) == 0
            if mod(year,400) ==0
                leap = 1;
            elseif mod(year,400) ~=0
                leap = 0;
            end
        end
    end
    
    if leap ==1
        if day >29 || day<1
            valid = false;
        end
    elseif leap ==0
        if day>28 || day<1
            valid = false;
        end
    end
else
	valid = false;
end