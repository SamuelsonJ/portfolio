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
  for(int i=0; i<15; i++){
    types[i]= new PointConditions(i);
  }
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
  for(int y = 20; y<590; y+=38)
    rect(350, y, 200, 32, 7);
  fill(255);
  textSize(20);
  text("1's                     "+types[0].points(), 360, 43);
  text("2's                     "+types[1].points(), 360, 81);
  text("3's                     "+types[2].points(), 360, 119);
  text("4's                     "+types[3].points(), 360, 157);
  text("5's                     "+types[4].points(), 360, 195);
  text("6's                     "+types[5].points(), 360, 233);
  text("3 of a kind         "+types[6].points(), 360, 271);
  text("4 of a kind         "+types[7].points(), 360, 309);
  text("5 of a kind         "+types[8].points(), 360, 347);
  text("6 of a kind         "+types[9].points(), 360, 385);
  text("run of 4             "+types[10].points(), 360, 423);
  text("run of 5             "+types[11].points(), 360, 461);
  text("run of 6             "+types[12].points(), 360, 499);
  text("Fuller House      "+types[13].points(), 360, 537);
  text("Freebie              "+types[14].points(), 360, 575);
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
  }
  if((mouseX>350&&mouseX<550)&&((mouseY>20&&mouseY<52)||(mouseY>58&&mouseY<90)||(mouseY>96&&mouseY<128)||(mouseY>134&&mouseY<166)||(mouseY>172&&mouseY<204)||(mouseY>210&&mouseY<242)||(mouseY>248&&mouseY<280)||
  (mouseY>286&&mouseY<318)||(mouseY>324&&mouseY<356)||(mouseY>362&&mouseY<394)||(mouseY>400&&mouseY<432)||(mouseY>438&&mouseY<470)||(mouseY>476&&mouseY<508)||(mouseY>514&&mouseY<546)||(mouseY>552&&mouseY<584))){
    rolls=2;
    for(int x=0; x<3; x++){
      for(int y=0; y<2; y++){
        die[x][y].switchSaved(false);
      }
    }
    if(mouseY>20&&mouseY<52){
      pointTotal+=types[0].returnPoints();
    }else if(mouseY>58&&mouseY<90){
      pointTotal+=types[1].returnPoints();
    }else if(mouseY>95&&mouseY<127){
      pointTotal+=types[2].returnPoints();
    }else if(mouseY>132&&mouseY<164){
      pointTotal+=types[3].returnPoints();
    }else if(mouseY>169&&mouseY<201){
      pointTotal+=types[4].returnPoints();
    }else if(mouseY>206&&mouseY<238){
      pointTotal+=types[5].returnPoints();
    }else if(mouseY>243&&mouseY<275){
      pointTotal+=types[6].returnPoints();
    }else if(mouseY>280&&mouseY<312){
      pointTotal+=types[7].returnPoints();
    }else if(mouseY>317&&mouseY<349){
      pointTotal+=types[8].returnPoints();
    }else if(mouseY>354&&mouseY<386){
      pointTotal+=types[9].returnPoints();
    }else if(mouseY>391&&mouseY<423){
      pointTotal+=types[10].returnPoints();
    }else if(mouseY>428&&mouseY<460){
      pointTotal+=types[11].returnPoints();
    }else if(mouseY>465&&mouseY<497){
      pointTotal+=types[12].returnPoints();
    }else if(mouseY>502&&mouseY<534){
      pointTotal+=types[13].returnPoints();
    }else if(mouseY>539&&mouseY<574){
      pointTotal+=types[14].returnPoints();
    }
    roll=true;
  }
  redraw();
}
