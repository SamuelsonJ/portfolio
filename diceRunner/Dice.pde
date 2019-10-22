class Die //models one single dice cube
{
    int x;
    int y;
    int pips;
    //variable declarations here
    Die(int x, int y) //constructor
    {
      this.x=x;
      this.y=y;
        //variable initializations here
    }
    void roll()
    {
        pips=(int)(Math.random()*6)+1;
    }
    void show()
    {
      rect(x, y, 50, 50, 7);
      fill(0);
      if(pips==1){
        ellipse(x+25, y+25, 5, 5);
      }else if(pips==2){
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+40, y+40, 5, 5);
      }else if(pips==3){
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+25, y+25, 5, 5);
        ellipse(x+40, y+40, 5, 5);
      }else if(pips==4){
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+40, y+10, 5, 5);
        ellipse(x+10, y+40, 5, 5);
        ellipse(x+40, y+40, 5, 5);
      }else if(pips==5){
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+40, y+10, 5, 5);
        ellipse(x+10, y+40, 5, 5);
        ellipse(x+40, y+40, 5, 5);
        ellipse(x+25, y+25, 5, 5);
      }else{
        ellipse(x+10, y+25, 5, 5);
        ellipse(x+40, y+25, 5, 5);
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+40, y+10, 5, 5);
        ellipse(x+10, y+40, 5, 5);
        ellipse(x+40, y+40, 5, 5);
      }
      fill(255);
        //your code here
    }
}
