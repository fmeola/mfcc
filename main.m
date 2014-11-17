%Llama a las demas funciones

function res = main()

overlap_percentage = 0.5;
frame = 0.02; %20 ms

[y,fv,bps] = wavread('media/Probando.wav');

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

for f = 1: total_frames
    yw = windowing(yp,frame_size,f,overlap,ham);
    yf = fft(yw);
    yper = periodogram(yf,frame_size);
    if f == 4
      figure(3)
      plot(yper);
    end


    if f == 4
      figure(3)
      plot(yper);
    end


end


