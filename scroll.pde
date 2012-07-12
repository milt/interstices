//size of array
//name of the array
//red, green, and blue arrays

void scroll(int arraySize,int arrayName[], int redArray[], int greenArray[], int blueArray[]){
  for(int n=0; n<13; n++){
    for(int x=0; x<arraySize; x++){
      queLED(constrain(arrayName[x]%13+n,0,12),arrayName[x]/13, redArray[x],greenArray[x],blueArray[x],true);
      queLED(constrain(arrayName[x]%13+n,0,12),arrayName[x]/13, redArray[x],greenArray[x],blueArray[x],false);
    }
    writey();
    delay(500);
    allClear();
    writey();
  }
}
