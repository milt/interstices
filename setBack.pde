void setBack(int r, int g, int b)
{
  int back[65];
  for(int i=0; i<65; i++)
    back[i]=i;
  
  for(int x=0; x<(sizeof(back)); x++){
   que(back[x], r,g,b, true);
   que(back[x], r,g,b, false);
  }
  
  writey();
}
