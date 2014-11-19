function res = main()

	[y,fv,bps] = wavread('media/Probando.wav');
	coef = mfcc(y,fv);
	coefvq = vq(coef,16);
	figure(4);
	plot(coefvq);
	
	md = meandist(coef,coefvq);
	disp(md);