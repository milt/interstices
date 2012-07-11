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
}
