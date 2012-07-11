unsigned char RedBrightness0[64];
unsigned char BlueBrightness0[64];
unsigned char GreenBrightness0[64];
unsigned char RedBrightness1[64];
unsigned char BlueBrightness1[64];
unsigned char GreenBrightness1[64];


//why are you so short?
//apparently this is how it handles this stuff
void allSet()
{
  myMatrix.changeLEDBoard(0, RedBrightness0, GreenBrightness0, BlueBrightness0);
  myMatrix.changeLEDBoard(1, RedBrightness1, GreenBrightness1, BlueBrightness1);
  changeOnboardLED(0, onboard[0], onboard[1], onboard[2]);
  changeOnboardLED(1, onboard[3], onboard[4], onboard[5]);
}
