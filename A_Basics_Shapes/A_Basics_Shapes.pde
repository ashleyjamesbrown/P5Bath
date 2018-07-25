// p5Bath
// ashley james brown
// july 2018
// digital dreams

//empty template sketch

void setup(){
  size(800,800); //size of sketch window
  background(0,0,0); //colour in R,G,B format
}

void draw(){
  fill(255,0,0); //colour to fill shape in R,G,B format
  noStroke(); //no outline please
  rect(0,0,100,100); //basic rectangle
  fill(255,255,255);
  stroke(0,255,0); //outline in R,G,B
  strokeWeight(5); //thickness of outline
  ellipse(width/2,height/2, 100,100); //basic circle
}