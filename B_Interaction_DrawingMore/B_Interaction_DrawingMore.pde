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
  
  float r = map(mouseX,0,width,0,255);
  float g = map(mouseY,0,height,0,255);
  
  noStroke();
  fill(r,g,255); //colour to fill shape in R,G,B format
  ellipse(mouseX,mouseY, 100,100); //basic circle
}

void keyPressed(){
 saveFrame("./screenshots/pic-###.jpg"); 
}