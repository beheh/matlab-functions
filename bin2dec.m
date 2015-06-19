function i=bin2dec(b)
% Convert binary vector to integer

i = 0;
n = numel(b);
for j=1:n
    i = i + (b(j) > 0) * (2 ^ (n-j));
end