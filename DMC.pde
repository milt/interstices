void dmc(){

  int theDMC[]= {
    0,1,4,8,10,11,12,
    13,15,17,18,20,21,
    23,26,28,30,32,34,36,
    39,41,43,47,49,
    52,53,56,60,62,63,64            };

/*  for(int n=0; n<64; n++){
    for(int x=0; x<33; x++){
      //que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)

      que(theDMC[x]+n, 255, 255, 255, true);
      que(theDMC[x]+n, 255, 255, 255, false);

    }
    writey();
    delay(500);
    allClear();
    writey();
  }
*/  
for(int n=0; n<13; n++){
  for(int x=0; x<33; x++){
    //queLED(int col, int row, unsigned char red, unsigned char blue, unsigned char green, boolean outer) {
    
    queLED(constrain(theDMC[x]%13+n,0,12), theDMC[x]/13, 255,255,255,true);
    queLED(constrain(theDMC[x]%13+n,0,12), theDMC[x]/13, 255,255,255,true);
    }
    writey();
    delay(500);
    allClear();
    writey();
    }
}






