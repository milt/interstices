
#include <MatrixNet.h>

MatrixNet myMatrix;

void setup() {
  myMatrix.begin();
  //random seed is coming from (temp?) sensor
  randomSeed(analogRead(5));
  //Serial.begin(9600);
  allClear();
}

//array of pixel addresses
//list translates to accurate position on board
int list[] = {
  62, 45, 28, 11, 57, 40,  8, 30, 13, 59, 42, 25,  8,
  15, 61, 44, 27, 10, 56, 24, 46, 29, 12, 58, 41, 24,
  31, 14, 60, 43, 26,  9,  0, 62, 45, 28, 11, 57, 40,
  47, 30, 13, 59, 42, 25, 47, 15, 61, 44, 27, 10, 56,
  63, 46, 29, 12, 58, 41, 63, 31, 14, 60, 43, 26,  9
};

//half the values belong to board one, half to board two (except 3, that's driven by the middle board)
int board0[] = {
  0, 1, 2, 3, 4, 5, 6, 
  13, 14, 15, 16, 17, 18, 19, 
  26, 27, 28, 29, 30, 31, 0, //what's the deal with this extra zero?
  39, 40, 41, 42, 43, 44, 
  52, 53, 54, 55, 56, 57};
int board1[] = {
  7, 8, 9, 10, 11, 12, 
  20, 21, 22, 23, 24, 25, 
  64, 33, 34, 35, 36, 37, 38, 
  45, 46, 47, 48, 49, 50, 51, 
  58, 59, 60, 61, 62, 63, 64};
  
//array for storage of onboard (middle board) LED values. 0-2 are outer, 3-5 are inner
byte onboard[6];

//these are the arrays that store the red, green and blue values for each of the 64 LED addresses on the two daughter boards
unsigned char RedBrightness0[64];
unsigned char BlueBrightness0[64];
unsigned char GreenBrightness0[64];
unsigned char RedBrightness1[64];
unsigned char BlueBrightness1[64];
unsigned char GreenBrightness1[64];


