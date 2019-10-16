var startX=150;
var startY=1;
var endX=150;
var endY=1;
var down=2;/* 0 for false, 1 for up, 2 for down*/
var sideways=0;/* 0 for false, 1 for right, 2 for left*/
function setup() {
  createCanvas(500,500);
  background(0,0,102);
  strokeWeight(5);
}


function draw() {
//Lightning going down
  if(down==2&&sideways==0){
    endX=startX+((int)(Math.random()*25)-12);
    endY=startY+((int)(Math.random()*20));
    if(startY>=500){
      stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      down=1;
    }else if(startX>=500){
      stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      sideways=2;
      down=0;
    }else if(startX<=0){
      stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      sideways=1;
      down=0;
    }
  }
    
    
    //Lightning going up
    if(down==1&&sideways==0){
      endX=startX+((int)(Math.random()*25)-12);
      endY=startY-((int)(Math.random()*20));
      if(startY<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        down=2;
      }else if(startX>=500){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=2;
        down=0;
      }else if(startX<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=1;
        down=0;
      }
     }
    
    //Lightning going left
    if(down==0&&sideways==2){
      endX=startX-((int)(Math.random()*20));
      endY=startY+((int)(Math.random()*25)-12);
      if(startX<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        down=0;
        sideways=1;
      }else if(startY>=500){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=0;
        down=1;
      }else if(startY<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=0;
        down=2;
      }
     }
    
    
    //Lightning going right
    if(down==0&&sideways==1){
    endX=startX+((int)(Math.random()*20));
    endY=startY+((int)(Math.random()*25)-12);
      if(startX>=500){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=2;
      }else if(startY>=500){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=0;
        down=1;
      }else if(startY<=0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        sideways=0;
        down=2;
      }
     }
  line(startX,startY,endX,endY);
  startX=endX;
  startY=endY;
  
}
