int oP = 1000;
int population=oP;
ArrayList<NormalParticle> stars = new ArrayList<NormalParticle>();

void setup(){
  size(500, 500);
  creation();
}

void draw(){
  background(0);
  for(int i=0; i<population; i++){
    stars.get(i).show();
    stars.get(i).move();
    if(stars.get(i).xposition>500||stars.get(i).yposition<0||stars.get(i).xposition<0||stars.get(i).yposition>500){
      stars.remove(i);
      population--;
      if(population==0)
        creation();
    }
  }
}

void creation(){
  population=oP;
  for(int i=0; i<population; i++){
    if(i==0)
      stars.add(new NormalParticle(250.0, 250.0, (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), Math.random()*300, Math.random()*2));
    else
      stars.add(new NormalParticle(250.0, 250.0, stars.get(i-1).r+20, stars.get(i-1).g, stars.get(i-1).b, Math.random()*300, Math.random()*2));
  }
}

public class NormalParticle{
 double xposition;
 double yposition;
 int r;
 int g;
 int b;
 double angle;
 double speed;
 
 NormalParticle(double x, double y, int r, int g, int b, double angle, double speed){
   xposition=x;
   yposition=y;
   this.r=r;
   this.g=g;
   this.b=b;
   this.angle=angle;
   this.speed=speed;
   if(this.r>255)
     this.r=0;
 }
 
 void move(){
   xposition+=Math.cos(angle)*speed;
   yposition+=Math.sin(angle)*speed;
   speed-=.01;
   angle+=.01;
 }
 
 void show(){
   stroke(255);
   fill(r, g, b);
   ellipse((float)xposition, (float)yposition, 10, 10);
 }
}

interface Particle{
  
}

class OddballParticle //uses an interface
{

}

class JumboParticle //uses inheritance
{


}
