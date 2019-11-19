var cell = [];
var population = 10;
var follow = 0;//0=wander, 1=follow, 2=dip
var pause = false;
function setup(){
  createCanvas(500, 500);
  for(var i = 0;i<population;i++){
    cell.push(new Bacteria(Math.floor(Math.random()*500), Math.floor(Math.random()*500), Math.floor(Math.random()*256), Math.floor(Math.random()*256), Math.floor(Math.random()*256), true, Math.floor(Math.random()*10)+3));
  }
}

function draw(){
  background(0);
  for(var i = 0;i<population;i++){
    cell[i].show();
    if(!pause){
      cell[i].move();
      if(follow==1)
        cell[i].follow();
      if(follow==2)
        cell[i].dip();
        if(cell[i].returnSmash()){
            multiply(cell[i].returnX(), cell[i].returnY(), cell[i].returnR(), cell[i].returnG(), cell[i].returnB());
            cell[i].changeSmash();
      }
      deathAndFertility(i);
    }
  }
}
  
function multiply(parentX, parentY, parentR, parentG, parentB){
    population++;
    cell.push(new Bacteria(parentX, parentY, parentR, parentG, parentB, false, Math.floor(Math.random()*10)+3));
}
  
function deathAndFertility(i){
  if(Math.floor(Math.random()*1000)<1){
    population--;
    cell.splice(i, 1);
  }
  else if(Math.floor(Math.random()*1000)<1){
    cell[i].changeSmash();
  }
}
  
function pauseUnpause(){
  if(pause==true)
    pause=false;
  else
    pause=true;
}

function mousePressed(){
  follow++;
  if(follow==3)
    follow=0;
}

function keyPressed(){
  switch(keyCode){
    case ' ':pauseUnpause(); break;
  }
}

class Bacteria{   
    
  constructor(x, y, r, g, b, fertility, size){
    this.x=x;
    this.y=y;
    this.r=r;
    this.g=g;
    this.b=b;
    this.fertility=fertility;
    this.size=size;
  }
  
  returnX(){
    return this.x;
  }
  
  returnY(){
    return this.y;
  }
  
  returnR(){
    return this.r;
  }
  
  returnG(){
    return this.g;
  }
  
  returnB(){
    return this.b;
  }
  
  returnSmash(){
    return this.fertility;
  }
  
  returnSize(){
    return this.size;
  }
  
  move(){
    this.x+=Math.floor(Math.random()*5)-2;
    this.y+=Math.floor(Math.random()*5)-2;
    if(this.x>=500-(this.size/2))
      this.x=500-(this.size/2);
    else if(this.x<=0+(this.size/2))
      this.x=0+(this.size/2);
    if(this.y>=500-(this.size/2))
      this.y=500-(this.size/2);
    else if(this.y<=0+(this.size/2))
      this.y=0+(this.size/2);
  }
  
  show(){
      stroke(255);
      fill(this.r,this.g,this.b);
      ellipse(this.x, this.y, this.size, this.size);
  }
  
  follow(){
    if(mouseX>this.x)
      this.x+=Math.floor(Math.random()*5);
    else if(mouseX<this.x)
      this.x-=Math.floor(Math.random()*5);
    if(mouseY>this.y)
      this.y+=Math.floor(Math.random()*5);
    else if(mouseY<this.y)
      this.y-=Math.floor(Math.random()*5);
  }
  
  dip(){
    if(mouseX>this.x)
      this.x-=Math.floor(Math.random()*5);
    else if(mouseX<this.x)
      this.x+=Math.floor(Math.random()*5);
    if(mouseY>this.y)
      this.y-=Math.floor(Math.random()*5);
    else if(mouseY<this.y)
      this.y+=Math.floor(Math.random()*5);
  }
  
  changeSmash(){
    if(this.fertility==true)
      this.fertility=false;
    if(Math.floor(Math.random()*100)<65)
      this.fertility=true;
  }
}