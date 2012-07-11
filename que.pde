//Queues an array of pixel values into the frame buffer array.
void que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)
{
<<<<<<< HEAD
 for(i=0; i<65; i++) {
  if(numb == 32) {
    if(outer) {
      onboard[0] = red;
      onboard[1] = green;
      onboard[2] = blue;
    } else {
      onboard[3] = red;
      onboard[4] = green;
      onboard[5] = blue;
=======

  unsigned char i = 0;
  for(i=0; i<65; i++) {
    if(numb == 32) {
      if(outer) {
        changeOnboardLED(0, red, green, blue);

      } 
      else {
        changeOnboardLED(1, red, green, blue);

      }
    }
    if(board0[i] == numb) {
      if(outer) {
        //list[] calls the array of physical addresses
        RedBrightness0[list[numb]] = red;
        GreenBrightness0[list[numb]] = green;
        BlueBrightness0[list[numb]] = blue;

      } 
      else {
        RedBrightness0[list[numb]-8] = red;
        GreenBrightness0[list[numb]-8] = green;
        BlueBrightness0[list[numb]-8] = blue;

      }
    } 
    else if(board1[i] == numb) {
      if(outer) {
        RedBrightness1[list[numb]] = red;
        GreenBrightness1[list[numb]] = green;
        BlueBrightness1[list[numb]] = blue;

      } 
      else {
        RedBrightness1[list[numb]-8] = red;
        GreenBrightness1[list[numb]-8] = green;
        BlueBrightness1[list[numb]-8] = blue;

      }
>>>>>>> some cleanup, also moved tunnel code to samburt() function
    }
  }
}

