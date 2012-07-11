void testFill() {
  //tests by filling with successive colors and then clearing
  //fill red
  for(int q=0;q<65;q++) {
    que(q, 255, 0, 0, true);
    que(q, 255, 0, 0, false);
  }
  allSet();
  delay(1000);
  allClear();
  delay(1000);

  //fill green
  for(int q=0;q<65;q++) {
    que(q, 0, 255, 0, true);
    que(q, 0, 255, 0, false);
  }
  allSet();
  delay(1000);
  allClear();
  delay(1000);

  //fill blue
  for(int q=0;q<65;q++) {
    que(q, 0, 0, 255, true);
    que(q, 0, 0, 255, false);
  }
  allSet();
  delay(1000);
  allClear();
  delay(1000);
}

