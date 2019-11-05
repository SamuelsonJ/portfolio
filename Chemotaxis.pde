ArrayList<Bacteria> cell = new ArrayList<Bacteria>();
int population=10;
int follow=0;//0=wander, 1=follow, 2=dip
void setup(){
  size(1000, 1000);
  for(int i=0;i<population+1;i++){
    cell.add(new Bacteria((int)(Math.random()*800)+100, (int)(Math.random()*800)+100, (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), true));
  }
}

void draw(){
  background(0);
  for(int i=0;i<population+1;i++){
    cell.get(i).show();
    cell.get(i).move();
    deathAndFertility(i);
    if(follow==1)
      cell.get(i).follow();
    if(follow==2)
      cell.get(i).dip();
    for(int j=0;j<population+1;j++){
      if(cell.get(i)!=cell.get(j)&&cell.get(i).returnSmash()&&cell.get(j).returnSmash())
        if(cell.get(i).returnX()<=cell.get(j).returnX()+5&&cell.get(i).returnX()>=cell.get(j).returnX()-5&&cell.get(i).returnY()<=cell.get(j).returnY()+5&&cell.get(i).returnY()>=cell.get(j).returnY()-5)
          multiply(cell.get(i).returnX(), cell.get(i).returnY(), cell.get(i).returnR(), ((cell.get(i).returnG())/2)+((cell.get(j).returnG())/2),  cell.get(i).returnB());
    }
  }
}
  
  public void multiply(int parentX, int parentY, int parentR, int mixedG, int parentB){
    if((int)(Math.random()*5)==3){
      population++;
      cell.add(new Bacteria(parentX, parentY, parentR, mixedG, parentB, false));
    }
  }
  
  public void deathAndFertility(int i){
    if((int)(Math.random()*10000)<10){
      population--;
      cell.remove(i);
    }
    if((int)(Math.random()*1000000)<20){
      cell.get(i).changeFertility();
    }
  }

void mousePressed(){
  follow++;
  if(follow==3)
    follow=0;
}
