function output = echo_gen(input, fs, delay,amp)
if delay ~= 0
    delay_t = round(delay*fs);
    new = zeros(delay_t,1);
    echo_val = input.*amp;
    new2 = [new;echo_val];
elseif delay == 0
    new2 = input.*amp;
end

for i = 1:length(new2)
    if i<= length(input)
        output(i,1) = input(i,1)+new2(i,1);
    elseif i > length(input)
        output(i,1) = new2(i,1);
    end
end

% normalization
max_val = max(abs(output));
if max_val > 1 
    output = output .*(1/max_val);
end

end