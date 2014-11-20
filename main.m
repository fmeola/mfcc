function res = main()

	[y,fv,bps] = wavread('media/JuanPaula.wav');
	coeforiginal = mfcc(y,fv);
	coefvqoriginal = vq(coeforiginal,16);


  [y,fv,bps] = wavread('media/SusanaFranco.wav');
  coefprueba1 = mfcc(y,fv);
  coefvqprueba1 = vq(coefprueba1,16);

  [y,fv,bps] = wavread('media/SusanaSandra.wav');
  coefprueba2 = mfcc(y,fv);
  coefvqprueba2 = vq(coefprueba2,16);

  [y,fv,bps] = wavread('media/SusanaEnzo.wav');
  coefprueba3 = mfcc(y,fv);
  coefvqprueba3 = vq(coefprueba3,16);

  [y,fv,bps] = wavread('media/SusanaPaula.wav');
  coefprueba4 = mfcc(y,fv);
  coefvqprueba4 = vq(coefprueba4,16);

  [y,fv,bps] = wavread('media/SusanaDiego.wav');
  coefprueba5 = mfcc(y,fv);
  coefvqprueba5 = vq(coefprueba5,16);


	md1 = meandist(coefprueba1,coefvqoriginal);
	disp(md1);
  md2 = meandist(coefprueba2,coefvqoriginal);
  disp(md2);
  md3 = meandist(coefprueba3,coefvqoriginal);
  disp(md3);
  md4 = meandist(coefprueba4,coefvqoriginal);
  disp(md4);
  md5 = meandist(coefprueba5,coefvqoriginal);
  disp(md5);
