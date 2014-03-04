import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;

PFont f; // Global font variable
float fontSize;

float norTextX; // "Norwegian Wood"
float norTextY; // "Norwegian Wood"
float authTextX; // "Haruki Murakami"
float authTextY; // "Haruki Murakami"

float eyeX1;
float eyeY1;
float eyeX2;
float eyeY2;
float eyeX3;
float eyeY3; 
float eyeX4;
float eyeY4;

Tree[] trees = new Tree[30]; // create array of trees
int numTrees = 30;

float treeRangeX;
float treeRangeY;


void setup()
{
  //    beginRecord(PDF, "norwegianwood001.pdf");
 

  colorMode(HSB, 1, 1, 1);
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  size(600, 900);
  background(white.hue(), white.saturation(), white.brightness());

  smooth();
  
  //generate trees
  strokeWeight(1);
  for (int t = 0; t < numTrees; t++) {
    treeRangeX = random((width/16)*-1, width*11/16);
    treeRangeY = random(height*5/8, height*15/16);
    trees[t] = new Tree(treeRangeX, treeRangeY);
    trees[t].displayTree();
  }

  //draw book title and author text
  norTextX = width/16;
  norTextY = height*3/16;
  authTextX = width/16;
  authTextY = height*4/16;

  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());

  f = createFont("GeosansLight", 72);

  textFont(f, 36);
  text("NORWEGIAN WOOD", norTextX, norTextY);

  textFont(f, 24);
  text("Haruki Murakami", authTextX, authTextY);


  // "hair hill" curve

  //array of arrays to plug coordinates into bezier vertex functions
  float hairs[][] = {
    {
      width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height, // 0-7
      width-10, -10, // array numbers 8, 9
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
  
  // draw white mask
  noStroke();
  fill(0, 0, 1);
  beginShape();
  vertex(hairs[0][0], hairs[0][1]);
  bezierVertex(hairs[0][2], hairs[0][3], hairs[0][4], hairs[0][5], hairs[0][6], hairs[0][7]);
  vertex(width, height);
  //vertex(0, height);
  endShape();

  for (int i = 0; i < 1; i++) {
    {
      noFill();
      stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
      strokeWeight(1);

      beginShape();

      //draw hair
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
      endShape();
    }
  }

  //eyes
  //  noFill();
  //  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  //  strokeWeight(2);


  eyeX1 = width*10/16;
  eyeY1 = height*9/16;
  eyeX2 = width*10/16;
  eyeY2 = height*9.5/16;
  eyeX3 = width*11/16;
  eyeY3 = height*9.5/16; 
  eyeX4 = width*12/16;
  eyeY4 = height*9/16;

  // curve(eyeX1, eyeY1, eyeX2, eyeY2, eyeX3, eyeY3, eyeX4, eyeY4);
  //beginShape();
  noFill();
  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  strokeWeight(1);

  //line(eyeX1, eyeY1, eyeX4, eyeY4);
  bezier(eyeX1, eyeY1, eyeX2, eyeY2, eyeX3, eyeY3, eyeX4, eyeY4);
  bezier(eyeX1+width*3/16, eyeY1, eyeX2+width*3/16, eyeY2, eyeX3+width*3/16, eyeY3, eyeX4+width*3/16, eyeY4);
  
  //mouth
  line(eyeX1+width*2/24, eyeY1+height*3/16, eyeX1+width*5/24, eyeY4+height*3/16);


  //  curveVertex(eyeX1, eyeY1);
  //  curveVertex(eyeX2, eyeY2);
  //  curveVertex(eyeX4, eyeY4);
  //  endShape();

  // create grid object (columns, rows, gutter size, margin size)

  // toggle this function to show/hide grid
  ModularGrid grid = new ModularGrid(16, 16, 0, 0);
  grid.display();

  //    endRecord();
}

