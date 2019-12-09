LineCounter line = new LineCounter("9 10 5 20 1 2 3");

void setup(){
  println(line);
  line.setLine("11 22 33 44 55 66 5 6 7");
  println(line);
  line.setLine("48 52 29 100 50 293 4");
  println(line);
  line.setLine("0");
  println(line);
  line.setLine("100 90 95 98 100 97");
  println(line);
}
