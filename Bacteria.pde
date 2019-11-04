public class Bacteria{
  
  private int x;
  private int y;
  public Bacteria(int x, int y){
    this.x=x;
    this.y=y;
  }
  
  public void move(){
    x+=(int)(Math.random()*5)-2;
    y+=(int)(Math.random()*5)-2;
  }
  
  public void show(){
      fill(#60E84D);
      ellipse(x, y, 10, 10);
  }
  
  public void multiply(){
  }
}
