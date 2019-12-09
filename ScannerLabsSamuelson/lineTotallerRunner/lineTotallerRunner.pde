LineTotaller line = new LineTotaller("1 2 3 4 5 6");

void setup(){
  println(line);
  line = new LineTotaller("10 20 30 40 50 60");
  println(line);
  line = new LineTotaller("250 657 2154 345 6796");
  println(line);
  line = new LineTotaller("0");
  println(line);
  line = new LineTotaller("-99 45 -98 92 87");
  println(line);
}
