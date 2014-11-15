function yw = windowing(y,frameSize,frameNmb,overlap, hamming)
i=1;
for k=1 + overlap*(frameNmb -1) : frameSize + overlap*(frameNmb-1)
  yw(i)=y(k)*hamming(i);
  i=i+1;
end

yw;
