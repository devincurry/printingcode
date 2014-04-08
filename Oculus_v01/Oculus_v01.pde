float insideX = 0;
float insideY = 100;
float insideW = 120;
float insideH = 50;

float outsideX;
float outsideY;
float outsideW;
float outsideH;

float ceilingX1;
float ceilingY1;
float ceilingX2;
float ceilingY2;
float ceilingX3;
float ceilingY3;

float floorX1;
float floorY1;
float floorX2;
float floorY2;
float floorX3;
float floorY3;

float middleX;
float middleY;
float middleW;
float middleH;

void setup () {
  size(500, 500);
  colorMode(HSB, 1, 1, 1);
  background(1, 0, 1);
  //  noStroke();
  stroke(1, 0, 0);
  strokeWeight(1);

  translate(100, 100);
  //inside
  fill(1, 0, .6);
  rect(insideX, insideY, insideW, insideH);

  //ceiling
  fill(1, 0, .5);
  ceilingX1 = insideX;
  ceilingY1 = insideY;
  ceilingX2 = insideW;
  ceilingY2 = ceilingY1;
  ceilingX3 = ceilingX2;
  ceilingY3 = ceilingY1-50;
  triangle(ceilingX1, ceilingY1, ceilingX2, ceilingY2, ceilingX3, ceilingY3);

  //floor
  pushMatrix();
  translate(0, 100);
  fill(1, 0, .7);
  floorX1 = insideX;
  floorY1 = insideH;
  floorX2 = insideW;
  floorY2 = floorY1;
  floorX3 = floorX2;
  floorY3 = floorY1+50;
  triangle(floorX1, floorY1, floorX2, floorY2, floorX3, floorY3);
  popMatrix();

  //outside
  fill(1, 0, .8);
  outsideX = insideW;
  outsideY = ceilingY3;
  outsideW = 80;
  outsideH = 150;
  strokeWeight(3);
  rect(outsideX, outsideY, outsideW, outsideH);
  
  //middle
  strokeWeight(1);
  fill(1,0,.6);
  /*
  float side1 = ceilingY1;
  float side2 = ceilingY3;
  float hypo = (side1*side1)+ (side2*side2);
  middleX = outsideX/2;
  middleY = hypo % hypo;
  middleW = insideW/2;
  middleH = insideH;
  rect(middleX, middleY, middleW, middleH);
  */
}

