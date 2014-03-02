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

PFont f; // Global font variable
float fontSize;

float norTextX; // "Norwegian"
float norTextY; // "Norwegian"
float woodTextX; // "Wood"
float woodTextY; // "Wood"
float authTextX; // "Haruki Murakami"
float authTextY; // "Haruki Murakami"


void setup()
{
  //    beginRecord(PDF, "letterK4.pdf"); 
  colorMode(HSB, 1, 1, 1);
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  TColor skyBlue = TColor.newHSV(.6, .7, 1);

  f = createFont("Neou-Thin", 48);


  size(600, 900);
  background(white.hue(), white.saturation(), white.brightness());
  //    background(skyBlue.hue(), skyBlue.saturation(), skyBlue.brightness());

  smooth();
  f = createFont("GeosansLight", 72);

//text
textFont(f, 36);
fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());

norTextX = width/16;
norTextY = height*3/16;
authTextX = width/16;
authTextY = height*4/16;

text("NORWEGIAN WOOD", norTextX, norTextY);

textFont(f, 24);
text("Haruki Murakami", authTextX, authTextY);

  // start hair hill curve


  vert1Y = (height*3/8);
  float hairs[][] = {
    {
      width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height, // 0-7
      width-10, -10, // 8, 9
      width-20, -20, // 10, 11
      width-30, -30, // 12, 13
      width-40, -40, // 14, 15
      width-50, -50, // 16, 17
      width-60, -60, // 18, 19
      width-70, -70, // 20, 21
      width-80, -80, // 22, 23
      width-90, -90, // 24, 25
      width-100, -100, // 26, 27
      width-110, -110, // 28, 29
      width-120, -120, // 30, 31
      width-130, -130, // 32, 33
      width-140, -140, // 34, 35
      width-150, -150, // 36, 37
      width-160, -160, // 38, 39
      width-170, -170, // 40, 41
      width-180, -180, // 42, 43
      width-190, -190, // 44, 45
      width-200, -200, // 46, 47
      width-210, -210, // 48, 49
      width-220, -220, // 50, 51
      width-230, -230, // 52, 53
      width-240, -240, // 54, 55
      width-250, -250  // 56, 57
    }
  };


  for (int i = 0; i < hairs.length; i++) {
    {
      noFill();
      stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
      strokeWeight(1);

      //draw curves
      bezier(hairs[i][0], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][6], hairs[i][7]);         // row 0
      bezier(hairs[i][8], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][9], hairs[i][7]);   // row 1
      bezier(hairs[i][10], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][11], hairs[i][7]);   // row 1
      bezier(hairs[i][12], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][13], hairs[i][7]); // row 2  
      bezier(hairs[i][14], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][15], hairs[i][7]); // row 3
      bezier(hairs[i][16], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][17], hairs[i][7]); // row 4
      bezier(hairs[i][18], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][19], hairs[i][7]); // row 5
      bezier(hairs[i][20], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][21], hairs[i][7]); // row 7
      bezier(hairs[i][22], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][23], hairs[i][7]); // row 8
      bezier(hairs[i][24], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][25], hairs[i][7]); // row 9
      bezier(hairs[i][26], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][27], hairs[i][7]); // row 10
      bezier(hairs[i][28], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][29], hairs[i][7]); // row 11
      bezier(hairs[i][30], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][31], hairs[i][7]);     // row 12
      bezier(hairs[i][32], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][33], hairs[i][7]); // row 13
      bezier(hairs[i][34], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][35], hairs[i][7]); // row 14
      bezier(hairs[i][36], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][37], hairs[i][7]); // row 15
      bezier(hairs[i][38], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][39], hairs[i][7]); // row 16
      bezier(hairs[i][40], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][41], hairs[i][7]); // row 17
      bezier(hairs[i][42], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][43], hairs[i][7]); // row 18
      bezier(hairs[i][44], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][45], hairs[i][7]); // row 19
      bezier(hairs[i][46], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][47], hairs[i][7]); // row 20
      bezier(hairs[i][48], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][49], hairs[i][7]); // row 21
      bezier(hairs[i][50], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][51], hairs[i][7]); // row 22
      bezier(hairs[i][52], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][53], hairs[i][7]); // row 23
      bezier(hairs[i][54], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][55], hairs[i][7]); // row 24
      bezier(hairs[i][56], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][57], hairs[i][7]); // row 26
    }
  }


  // create a grid object as a container for our grid variables (columns, rows, gutter size, margin size)

  ModularGrid grid = new ModularGrid(16, 16, 0, 0);

  // we can even implement a function that draws the grid for us
  //grid.display();

  //    endRecord();
}

