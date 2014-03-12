import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;
import toxi.color.*;
import toxi.util.datatypes.*;

float rightAngle = 60;
float leftAngle = 100;

float floorHeight = 30;
float spaceHeight = 50;
float bldgDepth = 600;
float bldgWidth = 200;
float firstFlWidth = 80;


void setup()
{
  size(1000, 720, P3D);
  colorMode(HSB, 1, 1, 1);
  beginRaw(PDF, "ITPlogo02.pdf");

  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  TColor red = TColor.newHSV(1, 1, 1);
  TColor dkWall = TColor.newHSV(1, 0, .35);
  TColor ltWall = TColor.newHSV(1, 0, .65);
  //TColor normWindow = TColor.newHSV(1, .5, 1);
  TColor itpLeft = TColor.newHSV(.15, 1, 1);
  TColor itpRight = TColor.newHSV(.15, 1, .8);

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

