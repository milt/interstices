void dmc(){

  int theDMC[]= {
    0,1,4,8,10,11,12,
    13,15,17,18,20,21,
    23,26,28,30,32,34,36,
    39,41,43,47,49,
    52,53,56,60,62,63,64        };

  for(int x=0; x<33; x++){
    //que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)

    que(theDMC[x], 255, 255, 255, true);
    que(theDMC[x], 255, 255, 255, false);
  }
  writey();
}




