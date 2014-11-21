function prueba1(fbanks)

  disp("*** Prueba 1 ***");
  disp("El audio de prueba correspondiente a Enzo parece ser de:");
  %audio de prueba
  [y,fv,bps] = wavread('media/JuanEnzo.wav');
  coeforiginal = mfcc(y,fv,fbanks);
  coefvqoriginal = vq(coeforiginal,16);
	
  %audios de entrenamiento	
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
  
  %vector de nombres para identificar al audio selecionado
  names = ["Franco";"Sandra";"Enzo";"Paula";"Diego"; "Mónica"; "Patricio"; "Julieta"; "Daniela"; "Agostina"; "Sebastián"];
  
  %cálculo del meandist para cada audio de entrenamiento
  md(1) = meandist(coefprueba1,coefvqoriginal);
  md(2) = meandist(coefprueba2,coefvqoriginal);
  md(3) = meandist(coefprueba3,coefvqoriginal);
  md(4) = meandist(coefprueba4,coefvqoriginal);
  md(5) = meandist(coefprueba5,coefvqoriginal);
  md(6) = meandist(coefprueba6,coefvqoriginal);
  md(7) = meandist(coefprueba7,coefvqoriginal);
  md(8) = meandist(coefprueba8,coefvqoriginal);
  md(9) = meandist(coefprueba9,coefvqoriginal);
  md(10) = meandist(coefprueba10,coefvqoriginal);
  md(11) = meandist(coefprueba11,coefvqoriginal);
  
  [min, index] = min(md);
  disp(names(index,:));
  disp("");
  disp("MeanDist:");
  disp(min);