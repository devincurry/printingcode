import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;

float rightAngle = 50;
float leftAngle = 100;

float floorHeight = 100;
float bldgDepth = 100;
float bldgWidth = 100;

float itpHue;
float floorHue;
float floorSat = .5;

float boxSize = 100;

float randHue;
float alphaAmount = .4;

void setup()
{
  size(1000, 1000, P3D);
  colorMode(HSB, 1, 1, 1, 1);
  beginRaw(PDF, "OculusPatternBlack14.pdf");
  smooth();
  fill(.65, 1, .1, 1); //black background
  //fill(1, 0, 1, 1); //white background
  rect(0, 0, 1000, 1000);
  drawThing();
  endRaw();
}

void drawThing() {


    background(1, 0, 0, 1); //black
  //background(1, 0, 1, 1); //white

  //shape
  strokeWeight(2);
  stroke(1, 0, 1, 1); //white
  //stroke(1, 0, 0, 1); //black
  for (int i = 0; i < 4; i++)
  {
    for (int j = 0; j < 4; j++)
    {

      pushMatrix();
      translate(200 + (i * 300), 200 + (j * 300), 0);
      randHue = random(0, 1);

      fill(randHue, .8, 1, alphaAmount);
      box(boxSize);

      float boxPos = random (0, 2);
      if (boxPos <= 1) {
        translate(0, 0, boxSize);
      } 
      else
      {
        translate(boxSize, 0, 0);
      }
      box(boxSize);
      popMatrix();
    }
  }
}

