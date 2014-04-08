import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;

float rightAngle = 50;
float leftAngle = 100;

float floorHeight = 100;
//float spaceHeight = 42;
float bldgDepth = 100;
float bldgWidth = 100;
//float firstFlWidth = 80;

//float itpHue = .15;
//float itpHue = random (0.0, 1.0);
//float floorHue = .6;

float itpHue;
float floorHue;
float floorSat = .5;

float boxSize = 100;

int displace = 0;


void setup()
{
  size(1000, 720, P3D);
  background(255);
  smooth();

  translate(displace, 0);
  drawThing();
}

void drawThing() {

  //fake background
  pushMatrix();
  translate(0, 0, -300);
  fill(255);
  rect(-4000, -4000, 8000, 8000);
  popMatrix(); 

  //shape
  strokeWeight(2);
  stroke(0);

  pushMatrix();
  rotateX(-.55);
  rotateY(-.2);
  translate(200, 100, 0);
  //rotateY(0.5);
  //  fill(255, 0, 0, 50);
  noFill();
  box(boxSize);
  //translate(boxSize,0,0);
  box(boxSize);
//  box(300,100,100);
  popMatrix();
  //endRaw();
}

void keyPressed()
{
  if(key == 'f') displace += 5;
  if(key == 'b') displace -= 5;
}
