//for reference
//void que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)

void oneByOne() {
  for (int bob=0; bob>2; bob++) {
    for (int n=0; n<4; n++) {
      for (int x=0; x<64; x++) {
        if (n==0) {
          que(x, 255, 0, 0, bob);
        }
        if (n==1) {
          que(x, 0, 255, 0, bob);
        }
        if (n==2) {
          que(x, 0, 0, 255, bob);
        }
      }
    }
  }
  allSet();
}


