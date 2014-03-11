import processing.pdf.*;
import geomerative.*;
import toxi.color.*;
import toxi.util.datatypes.*;

PFont f; // Global font variable
int fontSize;

float eyeX1;
float eyeY1;
float eyeX2;
float eyeY2;
float eyeX3;
float eyeY3; 
float eyeX4;
float eyeY4;

Tree[] trees = new Tree[40]; // create array of trees
int numTrees = 40;

float treeRangeX;
float treeRangeY;


void setup()
{
  size(600, 900);
  beginRecord(PDF, "norwegianwood011.pdf");
  colorMode(HSB, 1, 1, 1);
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  TColor red = TColor.newHSV(1, 1, 1);



  background(white.hue(), white.saturation(), white.brightness());

  smooth();

  // create grid object (columns, rows, gutter size, margin size)
  ModularGrid grid = new ModularGrid(16, 16, 0, 0);

  //generate trees
//  noStroke();
  strokeWeight(1);
  for (int t = 0; t < numTrees; t++) {
    treeRangeX = random((width/16)*-1, width*6/16);
    treeRangeY = random(height*6/8, height*15/16);
    trees[t] = new Tree(treeRangeX, treeRangeY);
    trees[t].displayTree();
  }

//  noStroke();
  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  fontSize = 60; //72
  RG.init(this);
  RFont titleFont = new RFont("GeosansLight.ttf", fontSize, RFont.LEFT);


  //title
  pushMatrix();
  translate(grid.modules[1][2].x, grid.modules[1][3].y);
  titleFont.draw("NORWEGIAN");
  popMatrix();

  pushMatrix();
  translate(grid.modules[1][2].x, grid.modules[1][4].y);
  titleFont.draw("WOOD");
  popMatrix();


  fontSize = 48; //36

  RG.init(this);
  RFont authorFont = new RFont("GeosansLight.ttf", fontSize, RFont.LEFT);

  //author
  pushMatrix();
  translate(grid.modules[1][2].x, grid.modules[1][7].y);
  authorFont.draw("Haruki");
  popMatrix();

  pushMatrix();
  translate(grid.modules[1][2].x, grid.modules[1][8].y);
  authorFont.draw("Murakami");
  popMatrix();

  // "hair hill" curve

  // draw white mask
  noStroke();
  fill(0, 0, 1);
  beginShape();
  vertex(width, height);
  endShape();

  pushMatrix();
  translate(100, 100);
  stroke(white.hue(), white.saturation(), white.brightness());
  fill(white.hue(), white.saturation(), white.brightness());

  strokeWeight(270);
  stroke(white.hue(), white.saturation(), white.brightness());
  fill(white.hue(), white.saturation(), white.brightness());
  bezier(width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height); 
  popMatrix();   

  pushMatrix();
  for (int i = 0; i < 8; i++) {
    {
      noFill();
      strokeWeight(3);

      //draw hair
      strokeWeight(3);

      fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
      stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
      noFill();
      bezier(width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height);         
      translate(random (10, 30), random (10, 30));
    }
  }
  popMatrix();

  bezier(width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height); 

  //eyelid
  strokeWeight(8);


  eyeX1 = width*13/16;
  eyeY1 = height*12/16;
  eyeX2 = width*13/16;
  eyeY2 = height*12.5/16;
  eyeX3 = width*14/16;
  eyeY3 = height*12.5/16; 
  eyeX4 = width*15/16;
  eyeY4 = height*12/16;

  noFill();
  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  strokeWeight(5);

  bezier(eyeX1, eyeY1, eyeX2, eyeY2, eyeX3, eyeY3, eyeX4, eyeY4);

  //mouth
  line(width*14/16, height*15/16, width, height*15/16);


  strokeWeight(1);

  // toggle this function to show/hide grid
  //grid.display();

  endRecord();
}

