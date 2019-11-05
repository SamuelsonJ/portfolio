public class Bacteria{
  
  private int x;
  private int y;
  private int r;
  private int g;
  private int b;
  private boolean smash;
  
  public Bacteria(int x, int y, int r, int g, int b, boolean smash){
    this.x=x;
    this.y=y;
    this.r=r;
    this.g=g;
    this.b=b;
    this.smash=smash;
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
    return smash;
  }
  
  public void move(){
    x+=(int)(Math.random()*5)-2;
    y+=(int)(Math.random()*5)-2;
  }
  
  public void show(){
      stroke(255);
      fill(r,g,b);
      ellipse(x, y, 10, 10);
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
    if((int)(Math.random()*100)<50)
      smash=false;
  }
  
  public void changeFertility(){
    smash=true;
  }
}
