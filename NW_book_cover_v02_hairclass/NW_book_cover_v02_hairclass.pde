import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;

Hair[] hairs = new Hair[5];

float vert1X;
float vert1Y;
float vert2X;
float vert2Y;
float bezVert1X;
float bezVert1Y;
float bezVert2X;
float bezVert2Y;

float w = width;
float h = height;

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
  strokeWeight(2);


  for (int i = 0; i <= 11; i++) {
//    hairs[i] = new Hair (width, height*3/8, width/4, height*3/8, width*3/4, height*6/8, 0, height);
    hairs[i] = new Hair (w, h*3/8, w/4, h*3/8, w*3/4, h*6/8, 0, h);


    // start hair hill curve

    //  vert1X = width;
    //  vert1Y = height*3/8;
    //  bezVert1X = width/4;
    //  bezVert1Y = height*3/8;
    //  bezVert2X = width*3/4;
    //  bezVert2Y = height*6/8;
    //  vert2X = 0;
    //  vert2Y = height;
    //  float hairDistance = 10;

/*
    //use array
    bezier(vert1X, vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, vert2X, vert2Y);

    bezier(vert1X - hairDistance, vert1Y - hairDistance, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, vert2X - hairDistance, vert2Y - hairDistance);
    hairDistance = 20;
    bezier(vert1X - hairDistance, vert1Y - hairDistance, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, vert2X - hairDistance, vert2Y - hairDistance);


    strokeWeight(1);
    
  for (int i = 0; i <= 20; i++) {
     strokeWeight(1);
     //translate(i, 0);
     vert1X = width;
     vert1Y = height*3/7;
     bezVert1X = width/4;
     bezVert1Y = (height*3/7);
     bezVert2X = width*3/4;
     bezVert2Y = (height*6/7);
     vert2X = 0;
     vert2Y = height;
     bezier(vert1X, vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, vert2X, vert2Y);
     }
     */


    // create a grid object as a container for our grid variables (columns, rows, gutter size, margin size)
    ModularGrid grid = new ModularGrid(8, 8, 0, 0);

    // we can even implement a function that draws the grid for us
    grid.display();

    //    endRecord();
  }
}

