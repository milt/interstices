void nyanCat(){
  int blue[]={ 
    6,10,12,
    20, 23, 24, 25,
    37, 59,63      };

  int purp[]={
    2,3,4,
    14,18,21,22,
    26,32,34,35,36,
    47,48,49};

  int yellow[]={
    28,29,30,
    40,44,
    52,58        };

  int green[]={
    41,42,43,
    53,57        };

  int orange[]={
    15,16,17,
    27,31,
    39,45       };

  //que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)
  //blues
  for(int x=0; x<10; x++){
    que(blue[x], 0,255,255, true);
    que(blue[x], 0,255,255, false);
  }
  //purples
  for (int x=0; x<16; x++){
    que(purp[x], 255,80,0, true);
    que(purp[x], 255,80,0, false);
  }
  //yellow
  for(int x=0; x<7; x++){
    que(yellow[x], 255,0,255, true);
    que(yellow[x], 255,0,255, false);
  }
  //green
  for(int x=0; x<5; x++){
    que(green[x],0,255,255, true);
    que(green[x],0,255,255, false);
  }
  //orange
  for(int x=0; x<7; x++){
    que(orange[x], 255,0,10, true);
    que(orange[x], 255,0,10, false);
  }
  writey();         
}










