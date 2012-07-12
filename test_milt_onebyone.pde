void testMilt() {
  for (int q=0;q<65;q++) {
    allClear();
    //que(q, 255, 0, 0, 1);
    que(q, 255, 0, 0, 1);
    allSet();
    delay(10);
    allClear();
    delay(10);
  }
}
