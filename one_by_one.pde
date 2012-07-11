//for reference
//void que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)

void oneByOne() {
  allClear();
  for (int x=0; x<65; x++){
    que(x, 255, 0, 0, true);
    que(x, 0, 0, 255, false);
    que(x-1, 0, 255, 0, true);
    delay(1000);
    allSet();
  } 
  for (int x=0; x<65; x++){
    que(x, 0, 0, 0, true);
    delay(1000);
    allSet();
  }

}





