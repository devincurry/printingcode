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

float randR;
float randG;
float randB;
float alphaAmount = 50;


void setup()
{
  //  size(1000, 720, P3D);
  size(1000, 1000, P3D);
  colorMode(RGB);
  beginRaw(PDF, "OculusPattern04.pdf");
  smooth();
  drawThing();
  endRaw();
}

void drawThing() {

  background(255);
  //background(30);

  //fake background
  //pushMatrix();
  //translate(0, 0, -300);
  //fill(255);
  //rect(-4000, -4000, 8000, 8000);
  //popMatrix(); 

  //shape
  strokeWeight(2);
  stroke(30);
  //stroke(255);
  for (int i = 0; i < 10; i++)
  {
    for (int j = 0; j < 100; j++)
    {

      pushMatrix();
      //rotateX(-.55);
      //rotateY(-.2);
      //      translate(200 + (i * 300), 100, 0);
      translate(200 + (i * 300), 200 + (j * 300), 0);
      //rotateY(0.5);
      //  fill(255, 0, 0, 50);
      // noFill();
      randR = random(0, 255);
      randG = random(0, 255);
      randB = random(0, 255);
      fill(randR, randG, randB, alphaAmount);
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
      //  box(300,100,100);
      popMatrix();
      //endRaw();
    }
  }
}

