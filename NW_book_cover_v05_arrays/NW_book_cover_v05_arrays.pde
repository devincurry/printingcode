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


  vert1Y = (height*3/8);
  float hairs[][] = {
    {



      width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height, // row 0
      width-10, -10, // 9, 10
      width-20, -20, // 11, 12
      width-30, -30, // 13, 14
      width-40, -40, // 14, 15
      width-50, -50, // 16, 17
      width-60, -60  // 18, 19
    }
  };


  for (int i = 0; i < hairs.length; i++) {
    {
      noFill();
      stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
      strokeWeight(1);



      bezier(hairs[i][0], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][6], hairs[i][7]);         // row 0
      bezier(hairs[i][9], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][10], hairs[i][7]);   // row 1
      bezier(hairs[i][11], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][12], hairs[i][7]); // row 2  
      bezier(hairs[i][13], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][14], hairs[i][7]); // row 3
      bezier(hairs[i][14], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][15], hairs[i][7]); // row 4
      bezier(hairs[i][16], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][17], hairs[i][7]); // row 5
      bezier(hairs[i][18], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][19], hairs[i][7]); // row 6
      /*
      bezier(hairs[i][56], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][62], hairs[i][7]); // row 7
      bezier(hairs[i][64], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][70], hairs[i][7]); // row 8
      bezier(hairs[i][72], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][78], hairs[i][7]); // row 9
      bezier(hairs[i][80], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][86], hairs[i][7]); // row 10
      bezier(hairs[i][88], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][94], hairs[i][7]); // row 11
      bezier(hairs[i][96], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][102], hairs[i][7]);     // row 12
      bezier(hairs[i][104], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][110], hairs[i][7]); // row 13
      bezier(hairs[i][112], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][118], hairs[i][7]); // row 14
      bezier(hairs[i][120], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][126], hairs[i][7]); // row 15
      bezier(hairs[i][128], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][134], hairs[i][7]); // row 16
      bezier(hairs[i][136], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][142], hairs[i][7]); // row 17
      bezier(hairs[i][144], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][150], hairs[i][7]); // row 18
      bezier(hairs[i][152], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][158], hairs[i][7]); // row 19
      bezier(hairs[i][160], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][166], hairs[i][7]); // row 20
      bezier(hairs[i][168], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][174], hairs[i][7]); // row 21
      bezier(hairs[i][176], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][182], hairs[i][7]); // row 22
      bezier(hairs[i][184], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][190], hairs[i][7]); // row 23
      */
    }
  }


  // create a grid object as a container for our grid variables (columns, rows, gutter size, margin size)

  ModularGrid grid = new ModularGrid(8, 8, 0, 0);

  // we can even implement a function that draws the grid for us
  grid.display();

  //    endRecord();
}

