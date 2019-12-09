Average line = new Average("9 10 5 20");

void setup(){
  println(line);
  line = new Average("11 22 33 44 55 66 77");
  println(line);
  line = new Average("48 52 29 100 50 29");
  println(line);
  line = new Average("0");
  println(line);
  line = new Average("100 90 95 98 100 97");
  println(line);
}
