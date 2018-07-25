// p5Bath
// ashley james brown
// july 2018
// digital dreams

//empty template sketch

PImage a;

void setup() {
  size(800, 800); //size of sketch window
  background(0, 0, 0); //colour in R,G,B format
  a=loadImage("pops.png");
  imageMode(CENTER);
}

void draw() {


  float r = map(mouseX, 0, width, 0, 255);
  float g = map(mouseY, 0, height, 0, 255);
  filter(ERODE);
  tint(r, g, 0);
  image(a, mouseX, mouseY);
}

void keyPressed(){
 saveFrame("./screenshots/pic-###.jpg"); 
}