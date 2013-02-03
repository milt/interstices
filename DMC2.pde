int iterate = 1;  //Controls the color of each letter

void dmc2(){
  allClear();
  
  int d[]={0,1,13,15,26,28,39,41,52,53};

  int m[]={4,8,17,18,20,21,30,32,34,43,47,56,60};

  int c[]={11,12,23,36,49,63,64};

  int back[]={2,3,5,6,7,9,10,14,16,19,22,24,25,27,38,40,42,44,45,46,48,50,51,54,55,57,58,50,61,62};

  int r1;
  int g1;
  int b1;

  //Uses iterate to control the color of the letters
  if(iterate == 1)
  {
    r1 = 0;
    g1 = 0;
    b1 = 255;
  }
  else if(iterate == 2)
  {
    r1 = 0;
    g1 = 255;
    b1 = 0;
  }
  else if(iterate == 3)
  {
    r1 = 255;
    g1 = 0;
    b1 = 0;
  }

  //que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)
  //D
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
  //back
    for(int x=0; x<34; x++){
        que(back[x],0,25,25, true);
        que(back[x],0,25,25, false);
    }


  writey();     

  iterate++;
  if(iterate > 3)
    iterate = 1;  
}










