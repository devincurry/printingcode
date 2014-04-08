import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;
//import toxi.color.*;
//import toxi.util.datatypes.*;

float rightAngle = 55;
float leftAngle = 95;

float floorHeight = 25;
float spaceHeight = 42;
float bldgDepth = 350;
float bldgWidth = 200;
float firstFlWidth = 80;

//float itpHue = .15;
//float itpHue = random (0.0, 1.0);
//float floorHue = .6;

float itpHue;
float floorHue;
float floorSat = .5;


void setup()
{
  size(1000, 720, P3D);
  background(255);
  //colorMode(HSB, 1, 1, 1);
  //beginRaw(PDF, "ITPlogo08.pdf");
  translate(0, -100);
  drawITP();
}

void drawITP() {
  itpHue = random(0.0, 1.0);

  pushMatrix();
  translate(0, 0, -300);
  fill(0);
  rect(-4000, -4000, 8000, 8000);
  popMatrix(); 

  noStroke();
  translate(600, 280, 0);

  //right wall
  //  rotateY(radians(50));
  rotateY(radians(rightAngle));

  fill(150, 0, 0);
  //right windows
  rect(0, spaceHeight, bldgDepth, floorHeight); //1st floor
  rect(0, spaceHeight-spaceHeight, bldgDepth, floorHeight); //2nd floor
  rect(0, spaceHeight-(spaceHeight*2), bldgDepth, floorHeight); //3rd floor
  rect(0, spaceHeight-(spaceHeight*4), bldgDepth, floorHeight); //5th floor

  fill(255, 0, 0);
  rect(0, spaceHeight-(spaceHeight*3), bldgDepth, floorHeight); //4th floor


  //left wall
  //  rotateY(radians(90));
  rotateY(radians(leftAngle));


  fill(0, 0, 150);
  rect(0, spaceHeight, firstFlWidth, floorHeight); //1st floor left
  rect(120, spaceHeight, firstFlWidth, floorHeight); //1st floor right
  rect(0, spaceHeight-spaceHeight, bldgWidth, floorHeight); //2nd floor
  rect(0, spaceHeight-(spaceHeight*2), bldgWidth, floorHeight); //3rd floor
  rect(0, spaceHeight-(spaceHeight*4), bldgWidth, floorHeight); //5th floor

  fill(0, 0, 255);
  rect(0, spaceHeight-(spaceHeight*3), bldgWidth, floorHeight); //4th floor

  //endRaw();
}


