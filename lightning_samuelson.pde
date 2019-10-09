private int startX=150;
private int startY=1;
private int endX=150;
private int endY=1;
private int down=2;/* 0 for false, 1 for up, 2 for down*/
private int sideways=0;/* 0 for false, 1 for right, 2 for left*/
void setup(){
  size(300,300);
  background(0,0,102);
  strokeWeight(5);
}
void draw(){
  stroke(224,194,0);
  //Lightning going down
  if(down==2&&sideways==0){
    endX=startX+((int)(Math.random()*25)-12);
    endY=startY+((int)(Math.random()*20));
    if(endX>=300){
      stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      down=1;
    }else if(endY>=300){
      stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      sideways=2;
      down=0;
    }else if(endY<=0){
      stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      sideways=1;
      down=0;
    }
  }
    
    
    //Lightning going up
    if(down==1&&sideways==0){
      endX=startX+((int)(Math.random()*25)-12);
      endY=startY-((int)(Math.random()*20));
      if(endX<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        down=2;
      }else if(endY>=300){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=2;
        down=0;
      }else if(endY<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=1;
        down=0;
      }
     }
    
    //Lightning going left
    if(down==0&&sideways==2){
      endX=startX-((int)(Math.random()*20));
      endY=startY+((int)(Math.random()*25)-12);
      if(endY<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        down=0;
        sideways=1;
      }else if(endX>=300){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=0;
        down=1;
      }else if(endX<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=1;
        down=2;
      }
     }
    
    
    //Lightning going right
    if(down==0&&sideways==1){
    endX=startX+((int)(Math.random()*20));
    endY=startY+((int)(Math.random()*25)-12);
      if(endY>=300){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=2;
      }else if(endX>=300){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=0;
        down=1;
      }else if(endX<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=0;
        down=2;
      }
     }
  line(startX,startY,endX,endY);
  startX=endX;
  startY=endY;
  
}
