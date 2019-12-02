class Die //models one single dice cube
{
    int x;
    int y;
    int pips=1;
    boolean saved;
    Die(int x, int y, boolean saved)
    {
      this.x=x;
      this.y=y;
      this.saved=saved;
    }
    void switchSaved(boolean saved){
      this.saved=saved;
    }
    void roll()
    {
        pips=(int)(Math.random()*6)+1;
    }
    public int returnPips(){
      return pips;
    }
    void show()
    {
      if(!saved)
        fill(255);
      else if(saved)
        fill(#FFDD18);
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
      }else if(pips==6){
        ellipse(x+10, y+25, 5, 5);
        ellipse(x+40, y+25, 5, 5);
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+40, y+10, 5, 5);
        ellipse(x+10, y+40, 5, 5);
        ellipse(x+40, y+40, 5, 5);
      }
      fill(255);
    }
}
