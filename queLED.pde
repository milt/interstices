//que an LED by grid location on the 13x5 display
void queLED(int col, int row, unsigned char red, unsigned char blue, unsigned char green, boolean outer) {
  que(row*13+col, red, blue, green, outer);
}
