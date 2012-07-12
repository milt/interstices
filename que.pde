//Queues an array of pixel values into the frame buffer array.
void que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)
{
  unsigned char i = 0;
  if (numb == 32) {
    if (outer) {
      onboard[0] = red;
      onboard[1] = green;
      onboard[2] = blue;
    } 
    else {
      onboard[3] = red;
      onboard[4] = green;
      onboard[5] = blue;
    }
  }

  //there is a problem here with how the thing is checking for pixel addresses
  //we are getting duplicate triggers
  //we should try the following after each block: return; or break; or continue;


  for (i=0; i<65; i++) { //checking to see if the address belongs to board zero or one
    if (board0[i] == numb) {  //if the address is found on board 0, then
      if (outer) {  //also if the outer flag is on
        //list[] calls the array of physical addresses
        RedBrightness0[list[numb]] = red;  //set rgb values
        GreenBrightness0[list[numb]] = green;
        BlueBrightness0[list[numb]] = blue;
        Serial.print("b0.o numb=");
        Serial.println(numb);  //trying to diagnose a double pixel error
      } 
      else { //if not outer / therefore inner - addresses are offset by -8
        RedBrightness0[list[numb]-8] = red;
        GreenBrightness0[list[numb]-8] = green;
        BlueBrightness0[list[numb]-8] = blue;
        Serial.print("b0.i numb=");
        Serial.println(numb);
      }
    } 
    else if (board1[i] == numb) {
      if (outer) {
        RedBrightness1[list[numb]] = red;
        GreenBrightness1[list[numb]] = green;
        BlueBrightness1[list[numb]] = blue;
        Serial.print("b1.o numb="+numb);
        Serial.println(numb);
      } 
      else {
        RedBrightness1[list[numb]-8] = red;
        GreenBrightness1[list[numb]-8] = green;
        BlueBrightness1[list[numb]-8] = blue;        
        Serial.print("b1.i numb=");
        Serial.println(numb);

      }
    }
  }
  Serial.println("one que cycle");
}

//old que... We were wondering why we did this, I think it was because the if statements "leaked" if the function was a void. Investigate...
/*
boolean que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)
{
 for(i=0; i<65; i++) {
  if(numb == 32) {
    if(outer) {
      onboard[0] = red;
      onboard[1] = green;
      onboard[2] = blue;
      return true;
    } else {
      onboard[3] = red;
      onboard[4] = green;
      onboard[5] = blue;
      return true;
    }
  }
  if(board0[i] == numb) {
   if(outer) {
     RedBrightness0[list[numb]] = red;
     GreenBrightness0[list[numb]] = green;
     BlueBrightness0[list[numb]] = blue;
     return true;
   } else {
     RedBrightness0[list[numb]-8] = red;
     GreenBrightness0[list[numb]-8] = green;
     BlueBrightness0[list[numb]-8] = blue;
    return true;
   }
  } else if(board1[i] == numb) {
   if(outer) {
     RedBrightness1[list[numb]] = red;
     GreenBrightness1[list[numb]] = green;
     BlueBrightness1[list[numb]] = blue;
    return true;
   } else {
     RedBrightness1[list[numb]-8] = red;
     GreenBrightness1[list[numb]-8] = green;
     BlueBrightness1[list[numb]-8] = blue;
    return true;
   }
  }
 }
}
*/


