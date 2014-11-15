% Paso 1
% Pre-emphasis

function yp = preemphasis(y, rows)

a = 0.97;

yp(1) = y(1);

for n = 2:rows
	yp(n) = y(n) - a * y(n-1);
end

yp;