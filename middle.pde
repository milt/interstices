//this is the middle board.  we should clean this up
void changeOnboardLED(boolean LED, byte Rbright, byte Gbright, byte Bbright) {
  if(LED == 0) {
    analogWrite(3, Rbright);         
    analogWrite(4, Gbright);         
    analogWrite(12, Bbright);
  } 
  else {
    analogWrite(13, Rbright);         
    analogWrite(14, Gbright);         
    analogWrite(15, Bbright);
  }
}
