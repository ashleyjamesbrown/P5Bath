// p5Bath
// ashley james brown
// july 2018
// digital dreams

//loops plus random numbers



void setup() {
  size(800, 800); //size of sketch window
  background(0, 0, 0); //colour in R,G,B format
}

void draw() {

  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);

  noStroke();
  fill(r, g, b); //colour to fill shape in R,G,B format



  //ellipse(x, y, 50, 50); //just draw one each time


  // loop to draw 10 every time
  for  (int i=0; i < 10; i ++) {
    float x = random(0, width);
    float y = random(0, height);
    ellipse(x, y, 50, 50);
  }
}

void keyPressed() {
  saveFrame("./screenshots/pic-###.jpg");
}