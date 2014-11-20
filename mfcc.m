%Llama a las demas funciones

function mfcc = mfcc(y,fv,fbanks)

overlap_percentage = 0.5;
frame = 0.02; %20 ms

total_samples = rows(y);
frame_size = fv*frame;
overlap = overlap_percentage*frame_size;


yp = preemphasis(y,rows(y));

%figure(1);
%plot(y);
%title("original");

%figure(2);
%plot(yp);
%title("preemphasis");

%funcion de hamming
ham = hamming(frame_size);

total_frames = floor(total_samples/overlap)-1;

%Se iteran por los frames
%sacarle magic numbers
coef_amount = 13;
filter_amount = 33;



for f = 1: total_frames
    yw = windowing(yp,frame_size,f,overlap,ham);
    yf = fft(yw);
    yper = periodogram(yf,frame_size);
    %if f == 4
    %  figure(3)
    %  plot(yper);
    %end
    for fb = 1 : rows(fbanks)
    	energy = 0;
    	filterbank = fbanks(fb,:);
    	for fftpoint = 1 : columns(filterbank)
    		energy += filterbank(fftpoint)*yper(fftpoint);
    	end
    	filterenergies(fb)=energy;
    end
    for n = 1 : (coef_amount - 1)
    	c=0;
    	for k = 1 : filter_amount
    		c+=log(filterenergies(k))*cos(n*(k-0.5)*pi/filter_amount);
    	end
    	coef(n)=c;
    end
    energycoef = loggedenergy(y,frame_size);
    n+=1;
    coef(n)=energycoef;
    for k = 1 : n
        mfcc(k,f) = coef(k);
    end
end
%Se calculan los deltas
delta(1,:) = (2*(mfcc(:,3)) + (mfcc(:,2)))/10;
delta(2,:) = (2*(mfcc(:,4)) + (mfcc(:,3) - mfcc(:,1)))/10;
for f = 3 : (total_frames-2)
    delta(f,:) = (2*(mfcc(:,f+2) - mfcc(:,f-2)) + (mfcc(:,f+1) - mfcc(:,f-1)))/10;
end
delta(total_frames-1,:) = (2*(-1*mfcc(:,total_frames-3)) + (mfcc(:,total_frames) - mfcc(:,total_frames-2)))/10;
delta(total_frames,:) = (2*(-1*mfcc(:,total_frames-2)) + (-1*mfcc(:,total_frames-1)))/10;

%guardo los deltas
for f = 1 : total_frames
    for k = 1 : coef_amount
        mfcc(coef_amount + k,f) = delta(f,k);
    end
end

mfcc;





