import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;

float vert1X;
float vert1Y;
float vert2X;
float vert2Y;
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
  TColor skyBlue = TColor.newHSV(.6, .7, 1);

  size(600, 900);
  background(white.hue(), white.saturation(), white.brightness());
  //    background(skyBlue.hue(), skyBlue.saturation(), skyBlue.brightness());

  smooth();

  // start hair hill curve

  //  strokeWeight(2);

  float hairs[][] = {
    {
      width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height,  //[0-7]
      width-10, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -10, height, //[8-15]
      width-20, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -20, height, //[16-23]
    }
  };

  for (int i = 0; i < hairs.length; i++)
  {
    noFill();
    stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
    strokeWeight(1);

    bezier(hairs[i][0], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][6], hairs[i][7]);
    bezier(hairs[i][8], hairs[i][9], hairs[i][10], hairs[i][11], hairs[i][12], hairs[i][13], hairs[i][14], hairs[i][15]);
    bezier(hairs[i][16], hairs[i][17], hairs[i][18], hairs[i][19], hairs[i][20], hairs[i][21], hairs[i][22], hairs[i][23]);



    /*
  for (int i = 0; i <= 20; i++) {
     strokeWeight(1);
     //translate(i, 0);
     vert1X = width;
     vert1Y = height*3/7;
     bezVert1X = width/4;
     bezVert1Y = height*3/7;
     bezVert2X = width*3/4;
     bezVert2Y = height*6/7;
     vert2X = 0;
     vert2Y = height;
     bezier(vert1X, vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, vert2X, vert2Y);
     }
     */
  }
  // create a grid object as a container for our grid variables (columns, rows, gutter size, margin size)

  ModularGrid grid = new ModularGrid(8, 8, 0, 0);

  // we can even implement a function that draws the grid for us
  grid.display();

  //    endRecord();
}

