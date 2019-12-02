PImage office;
PImage obamarm;
PImage drArm;
Snow[] flakes = new Snow[20];

void setup(){
  size(500, 500);
  for(int i=0;i<20;i++){
    flakes[i]=new Snow((int)(Math.random()*500), (int)(Math.random()*500), 10);
  }
  office = loadImage("office.png");
  obamarm = loadImage("obama.png");
  drArm = loadImage("DrArm.png");
}

void draw(){
  background(0);
  for(int i=0;i<20;i++){
    flakes[i].move();
    flakes[i].show();
  }
  image(office, 0, 0, width, height);
  image(drArm, 190, 310, 150, 75);
  image(obamarm, 80, 370, 100, 50);
  text(mouseX, mouseX, mouseY);
  text(mouseY, mouseX, mouseY+12);
}
