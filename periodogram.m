function yp = periodogram(y,frameSize)

for k=1 : frameSize
  yp(k)= (abs(y(k))**2)/frameSize;
end

yp;

