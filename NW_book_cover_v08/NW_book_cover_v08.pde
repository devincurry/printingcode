import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;

PFont f; // Global font variable
float fontSize;

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

  ModularGrid grid = new ModularGrid(16, 16, 0, 0);

  //generate trees
  strokeWeight(1);
  for (int t = 0; t < numTrees; t++) {
    treeRangeX = random((width/16)*-1, width*11/16);
    treeRangeY = random(height*5/8, height*15/16);
    trees[t] = new Tree(treeRangeX, treeRangeY);
    trees[t].displayTree();
  }

  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());

  f = createFont("GeosansLight", 72);

  textFont(f, grid.moduleHeight);
  text("NORWEGIAN WOOD", grid.modules[1][2].x, grid.modules[1][3].y);

  textFont(f, 24);
  text("Haruki Murakami", grid.modules[1][2].x, grid.modules[1][4].y);


  // "hair hill" curve

  // draw white mask
  noStroke();
  fill(0, 0, 1);
  beginShape();
  //vertex(hairs[0][0], hairs[0][1]);
  //bezierVertex(hairs[0][2], hairs[0][3], hairs[0][4], hairs[0][5], hairs[0][6], hairs[0][7]);
  vertex(width, height);
  //vertex(0, height);
  endShape();

  pushMatrix();
  for (int i = 0; i < 8; i++) {
    {
      noFill();
      stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
      strokeWeight(3);

/*
      //draw matte
      fill(0.1, 1, 1);
      vertex(0, height);
      bezierVertex(width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height); 
      vertex(width,height);
   */   

      fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
      stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
      
      noFill();


      //draw hair
      bezier(width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height);         

      translate(random (10, 30), random (10, 30));
    }
  }
  popMatrix();

  //eyes
  //  noFill();
  //  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  strokeWeight(8);


  eyeX1 = width*13/16;
  eyeY1 = height*12/16;
  eyeX2 = width*13/16;
  eyeY2 = height*12.5/16;
  eyeX3 = width*14/16;
  eyeY3 = height*12.5/16; 
  eyeX4 = width*15/16;
  eyeY4 = height*12/16;

  // curve(eyeX1, eyeY1, eyeX2, eyeY2, eyeX3, eyeY3, eyeX4, eyeY4);
  //beginShape();
  noFill();
  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  strokeWeight(5);

  //line(eyeX1, eyeY1, eyeX4, eyeY4);
  bezier(eyeX1, eyeY1, eyeX2, eyeY2, eyeX3, eyeY3, eyeX4, eyeY4);
  //  bezier(eyeX1+width*3/16, eyeY1, eyeX2+width*3/16, eyeY2, eyeX3+width*3/16, eyeY3, eyeX4+width*3/16, eyeY4);

  //mouth
  line(width*14/16, height*15/16, width, height*15/16);


  //  curveVertex(eyeX1, eyeY1);
  //  curveVertex(eyeX2, eyeY2);
  //  curveVertex(eyeX4, eyeY4);
  //  endShape();

  strokeWeight(1);

  // create grid object (columns, rows, gutter size, margin size)

  // toggle this function to show/hide grid
  //grid.display();

  //    endRecord();
}

