// p5Bath
// ashley james brown
// july 2018
// digital dreams

//empty template sketch

PImage a;

void setup(){
  size(800,800); //size of sketch window
  background(0,0,0); //colour in R,G,B format
  a=loadImage("pops.png");
  imageMode(CENTER);
}

void draw(){
  
image(a,width/2,height/2);
}