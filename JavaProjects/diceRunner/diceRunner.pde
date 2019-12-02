Die die[][] = new Die[3][2];
PointConditions types[] = new PointConditions[15];
boolean roll=true;
int rolls = 2;
int pointTotal=0;
boolean testFinished=true;

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
    types[i]= new PointConditions(i, false);
  }
}

void draw(){
  background(0);
  //rolling dice
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
  fill(0);
  textSize(20);
  text("Roll", 220, 40);
  fill(255);
  textSize(32);
  text("Total Score:"+pointTotal, 10, 180);
  //win displays
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
  text("Yahtzee*            "+types[8].points(), 360, 347);
  text("YEETzha!            "+types[9].points(), 360, 385);
  text("Run of 4             "+types[10].points(), 360, 423);
  text("Run of 5             "+types[11].points(), 360, 461);
  text("Run of 6             "+types[12].points(), 360, 499);
  text("Fuller House       "+types[13].points(), 360, 537);
  text("Freebie               "+types[14].points(), 360, 575);
  textSize(5);
  text("*I do not own this domain and have no affiliation to the Yahtzee brand", 10, 590);
  
  //reset
  if(testFinished/*finished()*/){
    fill(#FFDD18);
    rect(30, 240, 100, 25, 7);
    rect(30, 280, 100, 25, 7);
    fill(0);
    textSize(20);
    text("Restart", 45, 260);
    text("Continue", 38, 300);
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
  }
  //pointConditions
  if((mouseX>350&&mouseX<550)&&((mouseY>20&&mouseY<52)||(mouseY>58&&mouseY<90)||(mouseY>96&&mouseY<128)||(mouseY>134&&mouseY<166)||(mouseY>172&&mouseY<204)||(mouseY>210&&mouseY<242)||(mouseY>248&&mouseY<280)||
  (mouseY>286&&mouseY<318)||(mouseY>324&&mouseY<356)||(mouseY>362&&mouseY<394)||(mouseY>400&&mouseY<432)||(mouseY>438&&mouseY<470)||(mouseY>476&&mouseY<508)||(mouseY>514&&mouseY<546)||(mouseY>552&&mouseY<584))){
    rolls=2;
    for(int x=0; x<3; x++){
      for(int y=0; y<2; y++){
        die[x][y].switchSaved(false);
      }
    }
    if(mouseY>20&&mouseY<52){
      runCondition(0);
    }else if(mouseY>58&&mouseY<90){
      runCondition(1);
    }else if(mouseY>95&&mouseY<127){
      runCondition(2);
    }else if(mouseY>132&&mouseY<164){
      runCondition(3);
    }else if(mouseY>169&&mouseY<201){
      runCondition(4);
    }else if(mouseY>206&&mouseY<238){
      runCondition(5);
    }else if(mouseY>243&&mouseY<275){
      runCondition(6);
    }else if(mouseY>280&&mouseY<312){
      runCondition(7);
    }else if(mouseY>317&&mouseY<349){
      runCondition(8);
    }else if(mouseY>354&&mouseY<386){
      runCondition(9);
    }else if(mouseY>391&&mouseY<423){
      runCondition(10);
    }else if(mouseY>428&&mouseY<460){
      runCondition(11);
    }else if(mouseY>465&&mouseY<497){
      runCondition(12);
    }else if(mouseY>502&&mouseY<534){
      runCondition(13);
    }else if(mouseY>539&&mouseY<574){
      runCondition(14);
    }
  }
  //reset area
  if((finished()&&mouseX>30&&mouseX<130)&&(mouseY>240&&mouseY<265)||(mouseY>280&&mouseY<205)){
    for(int i=0;i<15;i++){
      types[i].changeUsed(false);
      types[i].changePoints(0);
    }
    for(int x=0; x<3; x++){
      for(int y=0; y<2; y++){
        die[x][y].switchSaved(false);
      }
    }
    if(mouseY>240&&mouseY<265){
      
    }
  }
  redraw();
}

public void runCondition(int type){
  if(!types[type].returnUsed()){
     pointTotal+=types[type].returnPoints();
     types[type].changeUsed(true);
     roll=true;    
  }
}

public boolean finished(){
  if(types[0].returnUsed()&&types[1].returnUsed()&&types[2].returnUsed()&&types[3].returnUsed()&&types[4].returnUsed()&&types[5].returnUsed()&&types[6].returnUsed()&&types[7].returnUsed()&&types[8].returnUsed()&&types[9].returnUsed()&&types[10].returnUsed()&&types[11].returnUsed()&&types[12].returnUsed()&&types[13].returnUsed()&&types[14].returnUsed()){
    return true;
  }
  return false;
}
