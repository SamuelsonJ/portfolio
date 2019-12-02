public class Bacteria{
  
  private int x;
  private int y;
  private int r;
  private int g;
  private int b;
  private boolean fertility;
  private int size;
  private boolean hunger;
  
  public Bacteria(int x, int y, int r, int g, int b, boolean fertility, boolean hunger, int size){
    this.x=x;
    this.y=y;
    this.r=r;
    this.g=g;
    this.b=b;
    this.fertility=fertility;
    this.size=size;
    this.hunger=hunger;
  }
  
  public int returnX(){
    return x;
  }
  
  public int returnY(){
    return y;
  }
  
  public int returnR(){
    return r;
  }
  
  public int returnG(){
    return g;
  }
  
  public int returnB(){
    return b;
  }
  
  public boolean returnSmash(){
    return fertility;
  }
  
  public int returnSize(){
    return size;
  }
  
  public boolean returnHunger(){
    return hunger;
  }
  
  public void changeHunger(boolean hunger){
    this.hunger=hunger;
  }
  
  public void move(){
    x+=(int)(Math.random()*5)-2;
    y+=(int)(Math.random()*5)-2;
    if(x>=500-(size/2))
      x=500-(size/2);
    else if(x<=0+(size/2))
      x=0+(size/2);
    if(y>=500-(size/2))
      y=500-(size/2);
    else if(y<=0+(size/2))
      y=0+(size/2);
  }
  
  public void show(){
      stroke(255);
      fill(r,g,b);
      ellipse(x, y, size, size);
  }
  
  public void follow(){
    if(mouseX>x)
      x+=(int)(Math.random()*5);
    else if(mouseX<x)
      x-=(int)(Math.random()*5);
    if(mouseY>y)
      y+=(int)(Math.random()*5);
    else if(mouseY<y)
      y-=(int)(Math.random()*5);
  }
  
  public void dip(){
    if(mouseX>x)
      x-=(int)(Math.random()*5);
    else if(mouseX<x)
      x+=(int)(Math.random()*5);
    if(mouseY>y)
      y-=(int)(Math.random()*5);
    else if(mouseY<y)
      y+=(int)(Math.random()*5);
  }
  
  public void changeSmash(){
    if(fertility==true)
      fertility=false;
    if((int)(Math.random()*100)<65)
      fertility=true;
  }
  
  public void grow(int preySize){
    size+=preySize;
    hunger=false;
  }
}
