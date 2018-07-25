import processing.video.*;

//import open cv on top

import java.awt.*;
import gab.opencv.*;

// p5Bath
// ashley james brown
// july 2018
// digital dreams

Capture cam;
OpenCV opencv;

void setup() {
  size(640, 480); //size of sketch window make it the same as our video settings
  background(0, 0, 0); //colour in R,G,B format
  cam = new Capture(this, 640, 480); //uses smaller settings so its faster
  cam.start(); //must start the buffer
  //imageMode(CENTER); //not for this
  opencv = new OpenCV(this, 640, 480);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 

}

void draw() {
  //load the video camera image into the opencv algorithm video buffer
  opencv.loadImage(cam);
  
  image(cam, 0, 0); //still show the camera image in the top left
  
  noFill();
  stroke(0,255,0);
  strokeWeight(10);
  Rectangle[] faces = opencv.detect(); //new rectangle array to store the rectangles found from the faces in the buffer
  for (int i = 0; i < faces.length; i++) {
       rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
  
  
}


void keyPressed() {
  saveFrame("./screenshots/pic-###.jpg");
}

//essential method to read the data and pipe it to the image buffer
void captureEvent(Capture cam) {
  cam.read();
}