class PointConditions{
  
  private int type;
  private int points;
  PointConditions(int type){
    this.type=type;
  }
  
  public int returnPoints(){
    detectType();
    return points;
  }
  
  public void detectType(){
    //1s
    if(type==0)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
    //2s
    if(type==1)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==2)
            points+=2;
    //3s        
    if(type==2)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==3)
            points+=3;
    //4s        
    if(type==3)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==4)
            points+=4;
    //5s        
    if(type==4)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==5)
            points+=5;
    //6s        
    if(type==5)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==6)
            points+=6;
    //3 of a kind        
    if(type==6)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
    //4 of a kind        
    if(type==7)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
    //5 of a kind        
    if(type==8)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
    //6 of a kind        
    if(type==9)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
    //4 run        
    if(type==10)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
    //5 run        
    if(type==11)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
    //6 run        
    if(type==12)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
    //Fuller house        
    if(type==13)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
    //freebie        
    if(type==14)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
          if(die[x][y].pips==1)
            points++;
  }
}
