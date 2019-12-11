LineBreaker line = new LineBreaker("1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9", 4);

void setup(){
  println(line);
  line = new LineBreaker("t h e b i g b a d w o l f h ad b i g e a r s a n d t e e t h", 2);
  println(line);
  line = new LineBreaker("a c o m p u t e r s c i e n c e p r o g r a m", 7);
  println(line);
  line = new LineBreaker("i a m a s a a m i a m", 2);
  println(line);
}
