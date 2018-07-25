import processing.video.*;

// p5Bath
// ashley james brown
// july 2018
// digital dreams

Capture cam;


void setup() {
  size(800, 800); //size of sketch window
  background(0, 0, 0); //colour in R,G,B format
  cam = new Capture(this); //uses standard settinsg from the camera
  cam.start(); //must start the buffer
  imageMode(CENTER);
}

void draw() {
  
  
  float r = map(mouseX,0,width,0,255);
  float g = map(mouseY,0,height,0,255);
  
  tint(r,g,0);
  
  image(cam, mouseX, mouseY, cam.width/3, cam.height/3);
}


void keyPressed(){
 saveFrame("./screenshots/pic-###.jpg"); 
}

//essential method to read the data and pipe it to the image buffer
void captureEvent(Capture cam){
 cam.read(); 
}