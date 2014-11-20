function res = main()

	[y,fv,bps] = wavread('media/HolaEnzo.wav');
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

  [y,fv,bps] = wavread('media/susanaMonica.wav');
  coefprueba6 = mfcc(y,fv);
  coefvqprueba6 = vq(coefprueba6,16);

  [y,fv,bps] = wavread('media/susanaDaniel.wav');
  coefprueba7 = mfcc(y,fv);
  coefvqprueba7 = vq(coefprueba7,16);

  [y,fv,bps] = wavread('media/susanaJulieta.wav');
  coefprueba8 = mfcc(y,fv);
  coefvqprueba8 = vq(coefprueba8,16);

  [y,fv,bps] = wavread('media/susanaDaniela.wav');
  coefprueba9 = mfcc(y,fv);
  coefvqprueba9 = vq(coefprueba9,16);

  [y,fv,bps] = wavread('media/susanaAgostina.wav');
  coefprueba10 = mfcc(y,fv);
  coefvqprueba10 = vq(coefprueba10,16);


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
  md6 = meandist(coefprueba6,coefvqoriginal);
  disp(md6);
  md7 = meandist(coefprueba7,coefvqoriginal);
  disp(md7);
  md8 = meandist(coefprueba8,coefvqoriginal);
  disp(md8);
  md9 = meandist(coefprueba9,coefvqoriginal);
  disp(md9);
  md10 = meandist(coefprueba10,coefvqoriginal);
  disp(md10);
