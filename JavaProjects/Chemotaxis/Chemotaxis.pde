ArrayList<Bacteria> cell = new ArrayList<Bacteria>();
ArrayList<Integer> removeList = new ArrayList<Integer>();
int population=10;
int follow=0;//0=wander, 1=follow, 2=dip
boolean pause=false;
void setup(){
  size(500, 500);
  for(int i=0;i<population+1;i++){
    cell.add(new Bacteria((int)(Math.random()*500), (int)(Math.random()*500), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), true, false, (int)(Math.random()*10)+3));
  }
}

void draw(){
  background(0);
  for(int i=0;i<population+1;i++){
    cell.get(i).show();
    if(!pause){
      cell.get(i).move();
      if(follow==1)
        cell.get(i).follow();
      if(follow==2)
        cell.get(i).dip();
      /*for(int j=0;j<population+1;j++){//run through population
        if(cell.get(i)!=cell.get(j))//check to make sure its not comparing the same cell
        //cell.get(i).returnSize()      cell.get(j).returnSize()    cell.get(i).returnX()    cell.get(i).returnY()  cell.get(j).returnX()     cell.get(j).returnY()
          if(cell.get(i).returnX()<=cell.get(j).returnX()+((int)cell.get(j).returnSize()/2)&&cell.get(i).returnX()>=cell.get(j).returnX()-((int)cell.get(j).returnSize()/2)&&cell.get(i).returnY()<=cell.get(j).returnY()+((int)cell.get(j).returnSize()/2)&&cell.get(i).returnX()>=cell.get(j).returnY()-((int)cell.get(j).returnSize()/2))//checks if two cells are touching
            if(cell.get(j).returnR()!=cell.get(i).returnR()||cell.get(j).returnG()!=cell.get(i).returnG()||cell.get(j).returnB()!=cell.get(i).returnB()){//if cells are not the same faction
              if(cell.get(j).returnSize()==cell.get(i).returnSize()&&(int)(Math.random()*10)<6&&cell.get(j).returnHunger()){//cell j wins
                cell.get(j).grow(cell.get(i).returnSize());
                removeList.add(i);
              }else{// cell i wins
                if(cell.get(i).returnHunger()){
                  cell.get(i).grow(cell.get(j).returnSize());
                  removeList.add(j);
                }
              }
            }else if(cell.get(j).returnSize()>cell.get(i).returnSize()&&cell.get(j).returnHunger()){//if j is bigger than i
              cell.get(j).grow(cell.get(i).returnSize());
              removeList.add(i);
            }else{//if i is bigger than j
              if(cell.get(i).returnHunger()){
                cell.get(i).grow(cell.get(j).returnSize());
                removeList.add(j);
              }
            }
       } */
      if(cell.get(i).returnSmash()){
        multiply(cell.get(i).returnX(), cell.get(i).returnY(), cell.get(i).returnR(), cell.get(i).returnG(), cell.get(i).returnB());
        cell.get(i).changeSmash();
      }
      while(removeList.size()>0){
        population--;
        cell.remove(removeList.size()-1);
        removeList.remove(removeList.size()-1);
      }
      deathFertilityAndHunger(i);
    }
  }
}
  
public void multiply(int parentX, int parentY, int parentR, int parentG, int parentB){
  //if((int)(Math.random()*5)==3){
    population++;
    cell.add(new Bacteria(parentX, parentY, parentR, parentG, parentB, false, true, (int)(Math.random()*10)+3));
  //}
}
  
public void deathFertilityAndHunger(int i){
  if((int)(Math.random()*1000)<1){
    population--;
    cell.remove(i);
  }
  if((int)(Math.random()*1000)<1){
    cell.get(i).changeSmash();
  }/*
  if((int)(Math.random()*1000)<1)
    cell.get(i).changeHunger(true);*/
}
  
void pauseUnpause(){
  if(pause==true)
    pause=false;
  else
    pause=true;
}

void mousePressed(){
  follow++;
  if(follow==3)
    follow=0;
}

void keyPressed(){
  switch(keyCode){
    case ' ':pauseUnpause(); break;
  }
}
