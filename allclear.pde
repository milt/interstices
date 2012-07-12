//clears all pixels on both boards, then clears center pixel.
void allClear() {
  unsigned char q = 0;
  //zero daughter boards
  for(q=0;q<64;q++) {
    RedBrightness0[q] = 0;
    GreenBrightness0[q] = 0;
    BlueBrightness0[q] = 0;
    RedBrightness1[q] = 0;
    GreenBrightness1[q] = 0;
    BlueBrightness1[q] = 0;
  }
  //zero onboard LEDs
  for(q=0;q<6;q++) {
    onboard[q] = 0;
  }
  //Clear
  //myMatrix.changeLEDBoard(0, RedBrightness0, GreenBrightness0, BlueBrightness0);
  //myMatrix.changeLEDBoard(1, RedBrightness1, GreenBrightness1, BlueBrightness1);
  //changeOnboardLED(0, 0, 0, 0);
  //changeOnboardLED(1, 0, 0, 0);
}

