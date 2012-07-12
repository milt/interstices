void testMilt(int d) {
  for (int q=0;q<65;q++) {
    allClear();
    que(q, 255, 0, 0, 0);
    que(q, 255, 0, 0, 1);
    allSet();
    delay(d);
    allClear();
    delay(d);
  }
}
