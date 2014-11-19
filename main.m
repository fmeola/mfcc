%Llama a las demas funciones

function res = main()

overlap_percentage = 0.5;
frame = 0.02; %20 ms

[y,fv,bps] = wavread('media/Juan.wav');
disp(fv);

total_samples = rows(y);
frame_size = fv*frame;
overlap = overlap_percentage*frame_size;


yp = preemphasis(y,rows(y));

figure(1);
plot(y);
title("original");

figure(2);
plot(yp);
title("preemphasis");

%funcion de hamming
ham = hamming(frame_size);

total_frames = floor(total_samples/overlap)-1;

%Se iteran por los frames
%sacarle magic numbers
fbanks = filterbanks(300,fv/2, 33, 256);
for f = 1: total_frames
    yw = windowing(yp,frame_size,f,overlap,ham);
    yf = fft(yw);
    yper = periodogram(yf,frame_size);
    if f == 4
      figure(3)
      plot(yper);
    end
    for fb = 1 : rows(fbanks)
    	energy = 0;
    	filterbank = fbanks(fb,:);
    	for fftpoint = 1 : columns(filterbank)
    		energy += filterbank(fftpoint)*yper(fftpoint);
    	end
    	filterenergies(fb)=energy;
    end
    for n = 1 : 12
    	c=0;
    	for k = 1 : 33
    		c+=log(filterenergies(k))*cos(n*(k-0.5)*pi/33);
    	end
    	coef(n)=c;
    end
    energycoef = loggedenergy(y,frame_size);
    n+=1;
    coef(n)=energycoef;
    for d = 1 : n
    	if d+2 > n
    		cplus2 = coef(n);
    	else
    		cplus2 = coef(d+2);
    	end	
    	if d-2 < 1
    		cminus2 = coef(1);
    	else
    		cminus2 = coef(d-2);
    	end	
    	if d+1 > n
    		cplus1 = coef(n);
    	else
    		cplus1 = coef(d+1);
    	end	
    	if d-1 < 1
    		cminus1 = coef(1);
    	else
    		cminus1 = coef(d-1);
    	end	
    	coef(d+n) = 2 *((cplus2-cminus2)+(cplus1-cminus1))/10;
    end
    for k = 1 : n*2
    	mfcc(k,f) = coef(k);
    end
end
%hasta aca es el ejercicio 3.a

%ejercicio 3.b
%figure(6)
%plot(mfcc(1,:));
disp(rows(mfcc));
figure(4)
plot (vq(mfcc,16));

%figure(5)
%y = vq(mfcc,16);
%plot (y(1,:));



