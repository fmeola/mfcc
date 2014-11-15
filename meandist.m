%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Parámetros de entrada:
% * data = dataset
% * code = code vectors de un individuo
%
% Parámetros de salida:
% * dist = distorsión media

function dist = meandist(data,code)

[dim,n] = size(data);
[dim,nvector] = size(code);

dist = 0;

for l = 1:n
	%busco la mínima distancia/distorsión de cada columna
    distances = norm(repmat(data(:,l),1,nvector)-code,2,'columns');
    [m,i] = min(distances);
    dist = dist+m;
end
dist = dist/n;