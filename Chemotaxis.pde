ArrayList<Bacteria> cell = new ArrayList<Bacteria>();
int population=10;
void setup(){
  size(1000, 1000);
  for(int i=0;i<population+1;i++){
    cell.add(new Bacteria(500, 500));
  }
}

void draw(){
  background(0);
  for(int i=0;i<population+1;i++){
    cell.get(i).show();
    cell.get(i).move();
  }
}
