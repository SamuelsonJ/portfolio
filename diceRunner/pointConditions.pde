class PointConditions{
  
  private int type=0;
  private int points=0;
  private int first=8, second=-1, third=-1, fourth=-1, fifth=-1, sixth=-1;
  private int[] pipCount={die[0][0].pips, die[0][1].pips, die[1][0].pips, die[1][1].pips, die[2][0].pips, die[2][1].pips};
  private int[] rollCounter={0, 0, 0, 0, 0, 0};
  private boolean cont=true;
       
  PointConditions(int type){
    this.type=type;
  }
  //standard point return with detectType();
  public int returnPoints(){
    detectType();
    return points;
  }
  //Just returns last value of points for each type
  public int points(){
    return points;
  }
  
  public void sort(int arr[]) { 
    pipCount[0]=die[0][0].pips;
    pipCount[1]=die[0][1].pips;
    pipCount[2]=die[1][0].pips;
    pipCount[3]=die[1][1].pips;
    pipCount[4]=die[2][0].pips;
    pipCount[5]=die[2][1].pips;
     int n = arr.length; 
     for (int i = 0; i < n-1; i++) {
        int min_idx = i; 
        for (int j = i+1; j < n; j++) 
           if (arr[j] < arr[min_idx]) 
              min_idx = j;
        int temp = arr[min_idx]; 
        arr[min_idx] = arr[i]; 
        arr[i] = temp; 
     }
     pipCount=arr;
  } 
  
  public void rollCounting(){
    for(int x=0; x<3; x++)
      for(int y=0; y<2; y++){
        if(die[x][y].pips==1)
          rollCounter[0]++;
        if(die[x][y].pips==2)
          rollCounter[1]++;
        if(die[x][y].pips==3)
          rollCounter[2]++;
        if(die[x][y].pips==4)
          rollCounter[3]++;
        if(die[x][y].pips==5)
          rollCounter[4]++;
        if(die[x][y].pips==6)
          rollCounter[5]++;
      }
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
    if(type==6){
      rollCounting();
      for(int i=5; i>-1; i--)
        if(rollCounter[i]>=3){
          points=(i+1)*3;
          i=0;
        }
    }
    //4 of a kind        
    if(type==7){
      rollCounting();
      for(int i=5; i>-1; i--)
        if(rollCounter[i]>=4){
          points=(i+1)*4;
          i=0;
        }
    }
    //5 of a kind        
    if(type==8){
      rollCounting();
      for(int i=5; i>-1; i--)
        if(rollCounter[i]>=5){
          points=(i+1)*5;
          i=0;
        }
    }
    //6 of a kind        
    if(type==9){
      rollCounting();
      for(int i=5; i>-1; i--)
        if(rollCounter[i]>=6){
          points=(i+1)*6;
          i=0;
        }
    }
    //4 run        
    if(type==10){
      sort(pipCount);
      for(int i=5; i>-1; i--)
        if(pipCount[i]<first&&cont){
          fourth=third;
          third=second;
          second=first;
          first=pipCount[i];
          if(fourth==third+1&&third==second+1&&second==first+1){
             cont=false;
             System.out.println(""+first+second+third+fourth);
             points=first+second+third+fourth;
          }
        }
    }     
    //5 run        
    if(type==11){
      sort(pipCount);
      for(int i=5; i>-1; i--)
        if(pipCount[i]<first&&cont){
          fifth=fourth;
          fourth=third;
          third=second;
          second=first;
          first=pipCount[i];
          if(fifth==fourth+1&&fourth==third+1&&third==second+1&&second==first+1){
              cont=false;
              System.out.println(""+first+second+third+fourth+fifth);
              points=first+second+third+fourth+fifth;
          }
        }
    }
    //6 run        
    if(type==12){
      sort(pipCount);
      for(int i=5; i>-1; i--)
        if(pipCount[i]<first&&cont){
          sixth=fifth;
          fifth=fourth;
          fourth=third;
          third=second;
          second=first;
          first=pipCount[i];
          if(sixth==fifth+1&&fifth==fourth+1&&fourth==third+1&&third==second+1&&second==first+1){
              cont=false;
              points=21;
          }
        }
    }
    //Fuller house        
    if(type==13){
      rollCounting();
      for(int i=5; i>-1; i--)
        if(rollCounter[i]==4)
          for(int j=5; j>-1; j--)
            if(rollCounter[j]==2){
              points=((i+1)*4)+((j+1)*2);
              i=0;
        }
    }
    //freebie        
    if(type==14)
      for(int x=0; x<3; x++)
        for(int y=0; y<2; y++)
            points+=die[x][y].pips;
  }
}
