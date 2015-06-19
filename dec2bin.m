function b=dec2bin(i)
% Convert integer to binary vector

b = [];
% find start index
j = 0;
while 2^(j+1) <= i
    j = j + 1;
end
% subtract
while j >= 0
    if 2^j <= i
        i = i - 2^j;
        v = [1];
    else
        v = [0];
    end
    b = horzcat(b,v);
    j = j - 1;
end