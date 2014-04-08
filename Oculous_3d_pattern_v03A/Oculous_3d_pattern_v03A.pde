import processing.opengl.*;
import processing.pdf.*;
import geomerative.*;

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

//float randR;
//float randG;
//float randB;


void setup()
{
    beginRaw(PDF, "OculousPattern01.pdf");

  //  size(1000, 720, P3D);
  size(1200, 1000, P3D);

  smooth();



  //background(255);
  background(0);
    beginRaw(PDF, "OculousPattern01.pdf");

  fill(0);
  rect(0,0,1200,1000);

  //fake background
  //pushMatrix();
  //translate(0, 0, -300);
  //fill(255);
  //rect(-4000, -4000, 8000, 8000);
  //popMatrix(); 

  //shape
  strokeWeight(3.5);
  //stroke(0);
  stroke(255);


  for (int i = 0; i < 10; i++)
  {
    for (int j = 0; j < 100; j++)
    {
      float randR = random (0, 255);
      float randG = random (0, 255);
      float randB = random (0, 255);
      pushMatrix();
      //rotateX(-.55);
      //rotateY(-.2);
      //      translate(200 + (i * 300), 100, 0);
//      translate(200 + (i * 300), 200 + (j * 300), 0);
      translate(190 + (i * 300), 200 + (j * 300), 200);

      //rotateY(0.5);
      fill(randR, randG, randB, 70);
      //noFill();
      box(boxSize);
//      translate(0, 0, boxSize);
      translate(boxSize, 0, 0);

      box(boxSize);
      //  box(300,100,100);
      popMatrix();
    }
  }
    endRaw();
}

