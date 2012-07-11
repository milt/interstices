//this actively changes the LEDs to the values stored in the arrays
void allSet()
{
  myMatrix.changeLEDBoard(0, RedBrightness0, GreenBrightness0, BlueBrightness0);
  myMatrix.changeLEDBoard(1, RedBrightness1, GreenBrightness1, BlueBrightness1);
  changeOnboardLED(0, onboard[0], onboard[1], onboard[2]);
  changeOnboardLED(1, onboard[3], onboard[4], onboard[5]);
}
