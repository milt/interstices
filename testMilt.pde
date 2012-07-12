void testMilt(int d) {
  for (int q=0;q<65;q++) {
    allClear();
    writey();
    que(q, 255, 0, 0, 0);
    que(q, 255, 0, 0, 1);
    writey();
    delay(d);
    allClear();
    writey();
    delay(d);
  }
}
