import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;
import toxi.color.*;
import toxi.util.datatypes.*;

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
  colorMode(HSB, 1, 1, 1);
  beginRaw(PDF, "ITPlogo02.pdf");

  itpHue = random(0.0, 1.0);
  randomHue();
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  TColor red = TColor.newHSV(1, 1, 1);
  TColor dkWall = TColor.newHSV(floorHue, floorSat, .35);
  TColor ltWall = TColor.newHSV(floorHue, floorSat, .65);
  TColor itpLeft = TColor.newHSV(itpHue, 1, 1);
  TColor itpRight = TColor.newHSV(itpHue, 1, .8);

  pushMatrix();
  translate(0, 0, -300);
  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  rect(-4000, -4000, 8000, 8000);
  popMatrix(); 

  //background(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  //  background(white.hue(), white.saturation(), white.brightness());

  noStroke();
  translate(600, 280, 0);

  //right wall
  //  rotateY(radians(50));
  rotateY(radians(rightAngle));

  fill(dkWall.hue(), dkWall.saturation(), dkWall.brightness());

  //right windows
  rect(0, spaceHeight, bldgDepth, floorHeight); //1st floor
  rect(0, spaceHeight-spaceHeight, bldgDepth, floorHeight); //2nd floor
  rect(0, spaceHeight-(spaceHeight*2), bldgDepth, floorHeight); //3rd floor
  rect(0, spaceHeight-(spaceHeight*4), bldgDepth, floorHeight); //5th floor

  fill(itpRight.hue(), itpRight.saturation(), itpRight.brightness());
  rect(0, spaceHeight-(spaceHeight*3), bldgDepth, floorHeight); //4th floor


  //left wall
  //  rotateY(radians(90));
  rotateY(radians(leftAngle));


  fill(ltWall.hue(), ltWall.saturation(), ltWall.brightness());
  rect(0, spaceHeight, firstFlWidth, floorHeight); //1st floor left
  rect(120, spaceHeight, firstFlWidth, floorHeight); //1st floor right
  rect(0, spaceHeight-spaceHeight, bldgWidth, floorHeight); //2nd floor
  rect(0, spaceHeight-(spaceHeight*2), bldgWidth, floorHeight); //3rd floor
  rect(0, spaceHeight-(spaceHeight*4), bldgWidth, floorHeight); //5th floor

  fill(itpLeft.hue(), itpLeft.saturation(), itpLeft.brightness());
  rect(0, spaceHeight-(spaceHeight*3), bldgWidth, floorHeight); //4th floor

  endRaw();
}

void randomHue() {
  if (itpHue <= 0.55) {
    floorHue = itpHue + .45;
    if (itpHue > 0.55) {
      floorHue = itpHue -.45;
    }
  }
}

