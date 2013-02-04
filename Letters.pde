/*
//Letters - uppercase or lower, depending on which shows up better
int a(int startCol, int r, int g, int b)
{
  int pixels[]={(startCol+(13*0)+0), (startCol+(13*0)+1), (startCol+(13*0)+2), (startCol+(13*1)+0), (startCol+(13*1)+2), (startCol+(13*2)+0), (startCol+(13*2)+1), (startCol+(13*2)+2), (startCol+(13*3)+0), (startCol+(13*3)+2), (startCol+(13*4)+0), (startCol+(13*4)+2)};
  
  for(int x=0; x<(sizeof(pixels)); x++){
   que(pixels[x], r,g,b, true);
   que(pixels[x], r,g,b, false);
  }
  
  writey();

  return startCol+4;
}

int c(int startCol, int r, int g, int b)
{
  int pixels[]={(startCol+(13*0)+1), (startCol+(13*0)+2), (startCol+(13*1)+0), (startCol+(13*2)+0), (startCol+(13*3)+0), (startCol+(13*4)+1), (startCol+(13*4)+2)};
  
  for(int x=0; x<(sizeof(pixels)); x++){
   que(pixels[x], r,g,b, true);
   que(pixels[x], r,g,b, false);
  }
  
  writey();
  
  return startCol+4;
}

int d(int startCol, int r, int g, int b)
{
  int pixels[]={(startCol+(13*0)+0), (startCol+(13*0)+1), (startCol+(13*1)+0), (startCol+(13*1)+2), (startCol+(13*2)+0), (startCol+(13*2)+2), (startCol+(13*3)+0), (startCol+(13*3)+2), (startCol+(13*4)+0), (startCol+(13*4)+1)};
  
  for(int x=0; x<(sizeof(pixels)); x++){
   que(pixels[x], r,g,b, true);
   que(pixels[x], r,g,b, false);
  }
  
  writey();
  
  return startCol+4;
}

int m(int startCol, int r, int g, int b)
{
  int pixels[]={(startCol+(13*0)+0), (startCol+(13*0)+4), (startCol+(13*1)+0), (startCol+(13*1)+1), (startCol+(13*1)+3), (startCol+(13*1)+4), (startCol+(13*2)+0), (startCol+(13*2)+2), (startCol+(13*2)+4), (startCol+(13*3)+0), (startCol+(13*3)+4), (startCol+(13*4)+0), (startCol+(13*4)+4)};
  
  for(int x=0; x<(sizeof(pixels)); x++){
   que(pixels[x], r,g,b, true);
   que(pixels[x], r,g,b, false);
  }
  
  writey();

  return startCol+6;
}

int one(int startCol, int r, int g, int b)
{
  int pixels[]={(startCol+(13*0)+1), (startCol+(13*1)+0), (startCol+(13*1)+1), (startCol+(13*2)+1), (startCol+(13*3)+1), (startCol+(13*4)+0), (startCol+(13*4)+1), (startCol+(13*4)+2)};
  
  for(int x=0; x<(sizeof(pixels)); x++){
   que(pixels[x], r,g,b, true);
   que(pixels[x], r,g,b, false);
  }
  
  return startCol+3;
}
*/

