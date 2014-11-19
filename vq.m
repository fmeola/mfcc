%% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%Parámetros de entrada:
%* data = dataset original
%Numero de code vectors requeridos* nvector = n ́
%
%Parametros de salida:
%* code = code vectors resultantes
function code = vq(data,nvector)
	%distorsion epsilon->determina cu ́anto itero
	deps = 1e-10;
	[dim,n] = size(data);
	%randomizo
	%data = data(:,randperm(n));
	%code vectors
	code = zeros(dim,nvector);
	%clusters
	clus = zeros(nvector,n+1);
	%inicialmente separo el clusters al azar y
	%calculo los centroides correspondientes
	m = floor(n/nvector);
	for k = 1:nvector-1
		clus(k,n+1) = m;
		clus(k,1:m) = (k-1)*m+1:k*m;
		code(:,k) = mean(data(:,clus(k,1:m)).').';
	end
	clus(nvector,n+1) = length((nvector-1)*m+1:n);
	clus(nvector,1:clus(nvector,n+1)) = (nvector-1)*m+1:n;
	code(:,nvector) = mean(data(:,clus(nvector,1:clus(nvector,n+1))).').';
	%En cada paso reagrupo los clusters y calculo la nueva
	%distorsi ́on media. Si el cambio de distorsi ́on no es significativo
	%paro
	olddist = 0;
	newdist = +inf;
	while abs(newdist-olddist) > deps
		olddist = newdist;
		clus = zeros(nvector,n+1);
		dist = 0;
		for l = 1:n
			distances = norm(repmat(data(:,l),1,nvector)-code,2,'columns');
			[m,i] = min(distances);
			dist = dist+m;
			i = min(i);
			clus(i,n+1) = clus(i,n+1)+1;
			clus(i,clus(i,n+1)) = l;
		end
		newdist = dist/n;
		for k = 1:nvector
			m = clus(k,n+1);
			code(:,k) = mean(data(:,clus(k,1:m)).').';
		end
	end
endfunction