int iterate2 = 1;  //Controls the color of each letter

void louis(){
  allClear();
  
  int l[]={0,13,26,39,52,53};

  int k[]={3,6,16,18,29,30,42,44,55,58};

  int m[]={8,12,21,22,24,25,34,36,38,47,51,60,64};

  int back[]={1,2,4,5,7,9,10,11,14,15,17,19,20,23,27,28,31,32,33,35,37,40,41,43,45,46,48,49,50,54,56,57,59,61,62,63};

  int r1;
  int g1;
  int b1;

  //Uses iterate to control the color of the letters
  if(iterate2 == 1)
  {
    r1 = 0;
    g1 = 0;
    b1 = 255;
  }
  else if(iterate2 == 2)
  {
    r1 = 0;
    g1 = 255;
    b1 = 0;
  }
  else if(iterate2 == 3)
  {
    r1 = 255;
    g1 = 0;
    b1 = 0;
  }

  //que(int numb, unsigned char red, unsigned char blue, unsigned char green, boolean outer)
  //D
  for(int x=0; x<6; x++){
    que(l[x], r1,g1,b1, true);
    que(l[x], r1,g1,b1, false);
  }
  //M
  for (int x=0; x<10; x++){
    que(k[x], r1,g1,b1, true);
    que(k[x], r1,g1,b1, false);
  }
  //C
  for(int x=0; x<13; x++){
    que(m[x], r1,g1,b1, true);
    que(m[x], r1,g1,b1, false);
  }
  //back
    for(int x=0; x<36; x++){
        que(back[x],0,0,0, true);
        que(back[x],0,0,0, false);
    }


  writey();     

  iterate2++;
  if(iterate2 > 3)
    iterate2 = 1;  
}










