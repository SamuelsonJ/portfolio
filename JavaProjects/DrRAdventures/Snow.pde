class Snow{
  int x;
  int y;
  int r;
  Snow(int x, int y,int r){
    this.x=x;
    this.y=y;
    this.r=r;
  }
  void move(){
    y+=(int)(Math.random()*5);
    x+=(int)(Math.random()*5)-2;
    if(x>500)
      y=0;
    if(y<=0||y>=500){
      x=(int)(Math.random()*500);
      y=0;
    }
  }
  
  void show(){
    fill(255);
    ellipse(x, y, r, r);
  }
}
