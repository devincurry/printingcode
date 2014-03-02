import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;

float bezVert1X;
float bezVert1Y;
float bezVert2X;
float bezVert2Y;

void setup()
{
  //    beginRecord(PDF, "letterK4.pdf"); 
  colorMode(HSB, 1, 1, 1);
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  size(600, 900);
  background(white.hue(), white.saturation(), white.brightness());
  smooth();

  strokeWeight(2);

  bezVert1X = width/4;
  bezVert1Y = height*3/7;
  bezVert2X = width*3/4;
  bezVert2Y = height*6/7;

  bezier(width, height*3/7, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, 0, height);


  // create a grid object as a container for our grid variables (columns, rows, gutter size, margin size)
  ModularGrid grid = new ModularGrid(4, 7, 0, 0);

  // we can even implement a function that draws the grid for us
  grid.display();

  //    endRecord();
}

