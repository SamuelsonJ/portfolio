Die die[][] = new Die[3][2];
boolean roll=true;

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
  fill(#FFDD18);
  rect(190, 20, 100, 25, 7);
}

void mousePressed(){
  //Dice Saving
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
   }
  redraw();
}
