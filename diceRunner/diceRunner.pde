Die die1 = new Die(20, 20);
Die die2 = new Die(75, 20);
Die die3 = new Die(130, 20);
Die die4 = new Die(20, 75);
Die die5 = new Die(75, 75);
Die die6 = new Die(130, 75);
Die die7 = new Die(20, 130);
Die die8 = new Die(75, 130);
Die die9 = new Die(130, 130);
void setup()
{
    size(600, 600);
    noLoop();
}
void draw()
{
  die1.roll();
  die2.roll();
  die3.roll();
  die4.roll();
  die5.roll();
  die6.roll();
  die7.roll();
  die8.roll();
  die9.roll();
  background(0);
  die1.show();
  die2.show();
  die3.show();
  die4.show();
  die5.show();
  die6.show();
  die7.show();
  die8.show();
  die9.show();
    //your code here
}
void mousePressed()
{
  redraw();
}
