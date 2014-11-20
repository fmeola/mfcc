function res = main()

  sample_frequency = 8000;
  filter_amount = 33;

  fbanks = filterbanks(300,sample_frequency/2, filter_amount, 256);

	[y,fv,bps] = wavread('media/JuanDaniela.wav');
	coeforiginal = mfcc(y,fv,fbanks);
	coefvqoriginal = vq(coeforiginal,16);

  [y,fv,bps] = wavread('media/JuanSebastian.wav');
  coeforiginal2 = mfcc(y,fv,fbanks);
  coefvqoriginal2 = vq(coeforiginal2,16);


  [y,fv,bps] = wavread('media/HolaFranco.wav');
  coefprueba1 = mfcc(y,fv,fbanks);
  coefvqprueba1 = vq(coefprueba1,16);

  [y,fv,bps] = wavread('media/HolaSandra.wav');
  coefprueba2 = mfcc(y,fv,fbanks);
  coefvqprueba2 = vq(coefprueba2,16);

  [y,fv,bps] = wavread('media/HolaEnzo.wav');
  coefprueba3 = mfcc(y,fv,fbanks);
  coefvqprueba3 = vq(coefprueba3,16);

  [y,fv,bps] = wavread('media/HolaPaula.wav');
  coefprueba4 = mfcc(y,fv,fbanks);
  coefvqprueba4 = vq(coefprueba4,16);

  [y,fv,bps] = wavread('media/HolaDiego.wav');
  coefprueba5 = mfcc(y,fv,fbanks);
  coefvqprueba5 = vq(coefprueba5,16);

  [y,fv,bps] = wavread('media/HolaMonica.wav');
  coefprueba6 = mfcc(y,fv,fbanks);
  coefvqprueba6 = vq(coefprueba6,16);

  [y,fv,bps] = wavread('media/HolaPatricio.wav');
  coefprueba7 = mfcc(y,fv,fbanks);
  coefvqprueba7 = vq(coefprueba7,16);


  [y,fv,bps] = wavread('media/HolaJulieta.wav');
  coefprueba8 = mfcc(y,fv,fbanks);
  coefvqprueba8 = vq(coefprueba8,16);

  [y,fv,bps] = wavread('media/HolaDaniela.wav');
  coefprueba9 = mfcc(y,fv,fbanks);
  coefvqprueba9 = vq(coefprueba9,16);

  [y,fv,bps] = wavread('media/HolaAgostina.wav');
  coefprueba10 = mfcc(y,fv,fbanks);
  coefvqprueba10 = vq(coefprueba10,16);

  [y,fv,bps] = wavread('media/HolaSebastian.wav');
  coefprueba11 = mfcc(y,fv,fbanks);
  coefvqprueba11 = vq(coefprueba11,16);


  disp("Daniela");

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
  md11 = meandist(coefprueba11,coefvqoriginal);
  disp(md11);

  disp("Sebastian");

  md1 = meandist(coefprueba1,coefvqoriginal2);
  disp(md1);
  md2 = meandist(coefprueba2,coefvqoriginal2);
  disp(md2);
  md3 = meandist(coefprueba3,coefvqoriginal2);
  disp(md3);
  md4 = meandist(coefprueba4,coefvqoriginal2);
  disp(md4);
  md5 = meandist(coefprueba5,coefvqoriginal2);
  disp(md5);
  md6 = meandist(coefprueba6,coefvqoriginal2);
  disp(md6);
  md7 = meandist(coefprueba7,coefvqoriginal);
  disp(md7);
  md8 = meandist(coefprueba8,coefvqoriginal2);
  disp(md8);
  md9 = meandist(coefprueba9,coefvqoriginal2);
  disp(md9);
  md10 = meandist(coefprueba10,coefvqoriginal2);
  disp(md10);
  md11 = meandist(coefprueba11,coefvqoriginal2);
  disp(md11);
