int d[]={0,1,13,15,26,28,39,41,52,53};

  int m[]={4,8,17,18,20,21,30,32,34,43,47,56,60};

  int c[]={11,12,23,36,49,63,64};

  int back[]={2,3,5,6,7,9,10,14,16,19,22,24,25,27,38,40,42,44,45,46,48,50,51,54,55,57,58,50,61,62};

  int r1 = 255;
  int g1 = 0;
  int b1 = 0;

  int left = getLeftDistance();
  int middle = getMiddleDistance();
  int right = getRightDistance();
  int distThresh = 20;
  
  int backRed = left;
  int backGreen = middle;
  int backBlue = right;
  int increasor = 10;
  
  int iterator = 0;
  int iterThresh = 10;
  

void dmc2(){
  allClear();
  
  if(iterator == iterThresh)
  {
    left = getLeftDistance();
    middle = getMiddleDistance();
    right = getRightDistance();
    
    getData();
    printData();
  }
  
  if(left > (backRed + distThresh))
  {
    backRed += increasor;
  }
  else if(left < (backRed - distThresh))
    backRed -= increasor;
    
  if(middle > (backGreen + distThresh))
    backGreen += increasor;
  else if(middle < (backGreen - distThresh))
    backGreen -= increasor;
    
  if(right > (backBlue + distThresh))
    backBlue += increasor;
  else if(right < (backBlue - distThresh))
    backBlue -= increasor;
    
  if(backRed > 255)
    backRed = 255;
  if(backGreen > 255)
    backGreen = 255;
  if(backBlue > 255)
    backBlue = 255;


  //que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)
  //back
  for(int x=0; x<34; x++){
      que(back[x],backRed,backGreen,backBlue, true);
      que(back[x],backRed,backGreen,backBlue, false);
  }
  for(int x=0; x<11; x++){
    que(d[x], r1,g1,b1, true);
    que(d[x], r1,g1,b1, false);
  }
  //M
  for (int x=0; x<13; x++){
    que(m[x], b1,r1,g1, true);
    que(m[x], b1,r1,g1, false);
  }
  //C
  for(int x=0; x<7; x++){
    que(c[x], g1,b1,r1, true);
    que(c[x], g1,b1,r1, false);
  }
  
  writey();     
  
  iterator++;
  if(iterator > iterThresh)
    iterator = 0;
}










