function res = main()
  sample_frequency = 8000;
  filter_amount = 33;

  fbanks = filterbanks(300,sample_frequency/2, filter_amount, 256);

  prueba1(fbanks);
  prueba2(fbanks);
  prueba3(fbanks);

