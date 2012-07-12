void testQueLED() {
  /*
  //stripe by row
  for (int row=0;row<5;row++) {
    if (!row%2) {
      for (int col=0;col<13;col++) {
        queLED(col, row, 255, 0, 0, 1);
        queLED(col, row, 255, 0, 0, 0);
      }
    }
  }
  writey();
  delay(1000);
  allClear();
  delay(1000);
  */
  
  //stripe one row?
      for (int col=0;col<13;col++) {
        queLED(col, 0, 255, 0, 0, 1);
        queLED(col, 0, 255, 0, 0, 0);
      }
        writey();
  delay(1000);
  allClear();
  writey();
  delay(1000);
}


