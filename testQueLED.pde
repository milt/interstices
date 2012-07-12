void testQueLED() {
//not really sure what is going on with this.
 
  for (int row=0;row<5;row++) {
    for (int col=0;col<13;col++) {
      queLED(col, row, 255, 255, 255, 0);
      queLED(12-col, 4-row, 255, 255, 255, 1);
      writey();
    }
  }
  
    for (int row=5;row>0;row--) {
    for (int col=13;col>0;col--) {
      queLED(col, row, 0, 0, 0, 0);
      queLED(12-col, 4-row, 0, 0, 0, 1);
      writey();
    }
  }
}


