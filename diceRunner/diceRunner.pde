Die die[][] = new Die[3][2];
PointConditions types[] = new PointConditions[15];
boolean roll=true;
int rolls = 2;
int pointTotal=0;

void setup(){
  size(600, 600);
  noLoop(); 
  die[0][0] = new Die(20, 20, false);
  die[1][0] = new Die(75, 20, false);
  die[2][0] = new Die(130, 20, false);
  die[0][1] = new Die(20, 75, false);
  die[1][1] = new Die(75, 75, false);
  die[2][1] = new Die(130, 75, false);
}

void draw(){
  background(0);
  for(int x=0; x<3; x++){
    for(int y=0; y<2; y++){
      if(!die[x][y].saved&&roll==true)        
        die[x][y].roll();
      die[x][y].show();
    }
  }
  roll=false;
  //roll button
  fill(#FFDD18);
  rect(190, 20, 100, 25, 7);
  //win displays
  fill(255);
  textSize(32);
  text("Total Score:"+pointTotal, 10, 180);
  fill(#874308);
  for(int y = 20; y<590; y+=38){
    rect(350, y, 200, 32, 7);
  }
}

void mousePressed(){
  //Dice Saving
  if(rolls>0){
    if(mouseX>die[0][0].x&&mouseX<die[0][0].x+50&&mouseY>die[0][0].y&&mouseY<die[0][0].y+50){
      if(die[0][0].saved)
        die[0][0].switchSaved(false);
      else if(!die[0][0].saved)
        die[0][0].switchSaved(true);
    }else if(mouseX>die[1][0].x&&mouseX<die[1][0].x+50&&mouseY>die[1][0].y&&mouseY<die[1][0].y+50){
      if(die[1][0].saved) 
        die[1][0].switchSaved(false);
      else if(!die[1][0].saved)
        die[1][0].switchSaved(true);
    }else if(mouseX>die[2][0].x&&mouseX<die[2][0].x+50&&mouseY>die[2][0].y&&mouseY<die[2][0].y+50){
      if(die[2][0].saved)
        die[2][0].switchSaved(false);
      else if(!die[2][0].saved)
        die[2][0].switchSaved(true);
    }else if(mouseX>die[0][1].x&&mouseX<die[0][1].x+50&&mouseY>die[0][1].y&&mouseY<die[0][1].y+50){
      if(die[0][1].saved)
        die[0][1].switchSaved(false);
      else if(!die[0][1].saved)
        die[0][1].switchSaved(true);
     }else if(mouseX>die[1][1].x&&mouseX<die[1][1].x+50&&mouseY>die[1][1].y&&mouseY<die[1][1].y+50){
      if(die[1][1].saved)
        die[1][1].switchSaved(false);
      else if(!die[1][1].saved)
        die[1][1].switchSaved(true);
     }else if(mouseX>die[2][1].x&&mouseX<die[2][1].x+50&&mouseY>die[2][1].y&&mouseY<die[2][1].y+50){
      if(die[2][1].saved)
        die[2][1].switchSaved(false);
      else if(!die[2][1].saved)
        die[2][1].switchSaved(true);
      //Roll Button
     }else if(mouseX>190&&mouseX<290&&mouseY>20&&mouseY<45){
        roll=true;
        rolls--;
       
     }
    redraw();
  }
  if((mouseX>350&&mouseX<550)&&((mouseY>20&&mouseY<52)||(mouseY>58&&mouseY<90)||(mouseY>95&&mouseY<127)||(mouseY>132&&mouseY<164)||(mouseY>169&&mouseY<201)||(mouseY>206&&mouseY<238)||(mouseY>243&&mouseY<275)||
  (mouseY>280&&mouseY<312)||(mouseY>317&&mouseY<349)||(mouseY>354&&mouseY<386)||(mouseY>391&&mouseY<423)||(mouseY>428&&mouseY<460)||(mouseY>465&&mouseY<497)||(mouseY>502&&mouseY<534)||(mouseY>539&&mouseY<574))){
    rolls=2;
    for(int x=0; x<3; x++){
      for(int y=0; y<2; y++){
        die[x][y].switchSaved(false);
      }
    }
    if(mouseY>20&&mouseY<52){
      types[0]= new PointConditions(0);
      pointTotal+=types[0].returnPoints();
    }else if(mouseY>58&&mouseY<90){
      types[1]= new PointConditions(1);
      pointTotal+=types[1].returnPoints();
    }else if(mouseY>95&&mouseY<127){
      types[2]= new PointConditions(2);
      pointTotal+=types[2].returnPoints();
    }else if(mouseY>132&&mouseY<164){
      types[3]= new PointConditions(3);
      pointTotal+=types[3].returnPoints();
    }else if(mouseY>169&&mouseY<201){
      types[4]= new PointConditions(4);
      pointTotal+=types[4].returnPoints();
    }else if(mouseY>206&&mouseY<238){
      types[5]= new PointConditions(5);
      pointTotal+=types[5].returnPoints();
    }else if(mouseY>243&&mouseY<275){
      types[6]= new PointConditions(6);
      pointTotal+=types[6].returnPoints();
    }else if(mouseY>280&&mouseY<312){
      types[7]= new PointConditions(7);
      pointTotal+=types[7].returnPoints();
    }else if(mouseY>317&&mouseY<349){
      types[8]= new PointConditions(8);
      pointTotal+=types[8].returnPoints();
    }else if(mouseY>354&&mouseY<386){
      types[9]= new PointConditions(9);
      pointTotal+=types[9].returnPoints();
    }else if(mouseY>391&&mouseY<423){
      types[10]= new PointConditions(10);
      pointTotal+=types[10].returnPoints();
    }else if(mouseY>428&&mouseY<460){
      types[11]= new PointConditions(11);
      pointTotal+=types[11].returnPoints();
    }else if(mouseY>465&&mouseY<497){
      types[12]= new PointConditions(12);
      pointTotal+=types[12].returnPoints();
    }else if(mouseY>502&&mouseY<534){
      types[13]= new PointConditions(13);
      pointTotal+=types[13].returnPoints();
    }else if(mouseY>539&&mouseY<574){
      types[14]= new PointConditions(14);
      pointTotal+=types[14].returnPoints();
    }
    roll=true;
    redraw();
  }
}
