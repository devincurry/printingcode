import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;
import geomerative.*;

float squareW = 50;
float squareH = 50;
float randBlack;
float randHue;
float randWhite;
int rowW = 250;
int rowH = 50;
int colW = 50;
int colH = 250;


void setup()
{
  size(250, 250);
  colorMode(HSB, 1, 1, 1);

  //beginRecord(PDF, "tanakaGreen01.pdf"); 



  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(.65, 0, 1);
  TColor red = TColor.newHSV(1, .85, 1);
  TColor blue = TColor.newHSV(.6, .75, .56);
  TColor green = TColor.newHSV(.42, .72, .6);

  smooth();
  noStroke();
  background(white.hue(), white.saturation(), white.brightness());
  // background(green.hue(), green.saturation(), green.brightness());
  //  background(blue.hue(), blue.saturation(), blue.brightness());
  //fill(red.hue(), red.saturation(), red.brightness());

  RG.init(this);

  //  int rowW = 250;
  //  int rowH = 50;
  //  int colW = 50;
  //  int colH = 250;

  /*
  WeightedRandomSet<Integer> ran = new WeightedRandomSet<Integer>();
   
   ran.add(color(black.hue(), black.saturation(), black.brightness()), 18);
   //  ran.add(color(red.hue(), red.saturation(), red.brightness()), 12);
   //  ran.add(color(blue.hue(), blue.saturation(), blue.brightness()), 12);
   ran.add(color(green.hue(), green.saturation(), green.brightness()), 12);
   
   ran.add(color(white.hue(), white.saturation(), white.brightness()), 8);
   */

  //  fill(ran.getRandom());
  //  rect(0, 0, shapeSize, shapeSize);


  /*
  RShape blackRow0 = RShape.createRectangle(0, 0, rowW, rowH);
   RShape blackRow1 = RShape.createRectangle(0, 50, rowW, rowH);
   RShape blackRow2 = RShape.createRectangle(0, 100, rowW, rowH);
   RShape blackRow3 = RShape.createRectangle(0, 150, rowW, rowH);
   RShape blackRow4 = RShape.createRectangle(0, 200, rowW, rowH);
   RShape blackCol0 = RShape.createRectangle(0, 0, colW, colH);
   RShape blackCol1 = RShape.createRectangle(50, 0, colW, colH);
   RShape blackCol2 = RShape.createRectangle(100, 0, colW, colH);
   RShape blackCol3 = RShape.createRectangle(150, 0, colW, colH);
   RShape blackCol4 = RShape.createRectangle(200, 0, colW, colH);
   
   
   RShape hueRow0 = RShape.createRectangle(0, 0, rowW, rowH);
   RShape hueRow2 = RShape.createRectangle(0, 100, rowW, rowH);
   RShape hueRow4 = RShape.createRectangle(0, 200, rowW, rowH);
   RShape hueCol0 = RShape.createRectangle(0, 0, colW, colH);
   RShape hueCol2 = RShape.createRectangle(100, 0, colW, colH);
   RShape hueCol4 = RShape.createRectangle(200, 0, colW, colH);
   
   RShape whiteSquare00 = RShape.createRectangle(0, 0, colW, rowH);
   RShape whiteSquare01 = RShape.createRectangle(0, 50, colW, rowH);
   RShape whiteSquare03 = RShape.createRectangle(0, 150, colW, rowH);
   RShape whiteSquare04 = RShape.createRectangle(0, 200, colW, rowH);
   RShape whiteSquare10 = RShape.createRectangle(50, 0, colW, rowH);
   RShape whiteSquare11 = RShape.createRectangle(50, 50, colW, rowH);
   RShape whiteSquare13 = RShape.createRectangle(50, 150, colW, rowH);
   RShape whiteSquare14 = RShape.createRectangle(50, 200, colW, rowH);
   RShape whiteSquare30 = RShape.createRectangle(150, 0, colW, rowH);
   RShape whiteSquare31 = RShape.createRectangle(150, 50, colW, rowH);
   RShape whiteSquare33 = RShape.createRectangle(150, 150, colW, rowH);
   RShape whiteSquare34 = RShape.createRectangle(150, 200, colW, rowH);
   RShape whiteSquare40 = RShape.createRectangle(200, 0, colW, rowH);
   RShape whiteSquare41 = RShape.createRectangle(200, 50, colW, rowH);
   RShape whiteSquare43 = RShape.createRectangle(200, 150, colW, rowH);
   RShape whiteSquare44 = RShape.createRectangle(200, 200, colW, rowH);
   */
  fill(black.hue(), black.saturation(), black.brightness());
  drawBlack();

  //  fill(red.hue(), red.saturation(), red.brightness());
  //  fill(blue.hue(), blue.saturation(), blue.brightness());
  fill(green.hue(), green.saturation(), green.brightness());
  drawHue();

  fill(white.hue(), white.saturation(), white.brightness());
  drawWhite();
  
  //endRecord();
}

void drawBlack() {
  RShape blackRow0 = RShape.createRectangle(0, 0, rowW, rowH);
  RShape blackRow1 = RShape.createRectangle(0, 50, rowW, rowH);
  RShape blackRow2 = RShape.createRectangle(0, 100, rowW, rowH);
  RShape blackRow3 = RShape.createRectangle(0, 150, rowW, rowH);
  RShape blackRow4 = RShape.createRectangle(0, 200, rowW, rowH);
  RShape blackCol0 = RShape.createRectangle(0, 0, colW, colH);
  RShape blackCol1 = RShape.createRectangle(50, 0, colW, colH);
  RShape blackCol2 = RShape.createRectangle(100, 0, colW, colH);
  RShape blackCol3 = RShape.createRectangle(150, 0, colW, colH);
  RShape blackCol4 = RShape.createRectangle(200, 0, colW, colH);

  randBlack = random (0, 9);

  if (randBlack < 2) {
    blackCol0.draw();
    blackCol1.draw();
    blackCol3.draw();
    blackCol4.draw();
  }
  if (randBlack >= 2 && randBlack < 6) {
    blackCol0.draw();
    blackCol2.draw();
    blackCol4.draw();
  }
  if (randBlack >= 6 && randBlack < 7) {
    blackRow0.draw();
    blackRow1.draw();
    blackRow3.draw();
  }
  if (randBlack >=7 && randBlack <8) {
    blackCol0.draw();
    blackCol4.draw();
    blackRow2.draw();
  }
  if (randBlack >=8 && randBlack <= 9) {
    blackCol0.draw();
    blackCol1.draw();
    blackCol3.draw();
  }
}

void drawHue() {
  RShape hueRow0 = RShape.createRectangle(0, 0, rowW, rowH);
  RShape hueRow2 = RShape.createRectangle(0, 100, rowW, rowH);
  RShape hueRow3 = RShape.createRectangle(0, 150, rowW, rowH);
  RShape hueRow4 = RShape.createRectangle(0, 200, rowW, rowH);
  RShape hueCol0 = RShape.createRectangle(0, 0, colW, colH);
  RShape hueCol2 = RShape.createRectangle(100, 0, colW, colH);
  RShape hueCol3 = RShape.createRectangle(150, 0, colW, colH);
  RShape hueCol4 = RShape.createRectangle(200, 0, colW, colH);

  randHue = random (0, 14);

  if (randHue < 2) {
    hueCol2.draw();
    hueCol4.draw();
  }
  if (randHue >= 2 && randHue < 5) {
    hueRow2.draw();
    hueRow4.draw();
  }
  if (randHue >= 5 && randHue < 6) {
    hueRow2.draw();
    hueCol3.draw();
    hueCol4.draw();
  }
  if (randHue >= 6 && randHue < 8) {
    hueRow2.draw();
    hueCol2.draw();
  }
  if (randHue >= 8 && randHue < 10) {
    hueRow2.draw();
    hueRow4.draw();
    hueCol2.draw();
    hueCol4.draw();
  }
  if (randHue >= 10 && randHue < 11) {
    hueRow2.draw();
    hueCol2.draw();
    hueCol4.draw();
  }
  if (randHue >= 11 && randHue < 12) {
    hueRow2.draw();
    hueCol3.draw();
  }
  if (randHue >= 12 && randHue < 13) {
    hueRow2.draw();
    hueRow3.draw();
    hueCol2.draw();
    hueCol3.draw();
  }
  if (randHue >= 13 && randHue < 14) {
    hueRow4.draw();
    hueCol2.draw();
  }
  //  fill(green.hue(), green.saturation(), green.brightness());
  //  hueRow2.draw();

  void drawWhite() {
    RShape whiteSquare00 = RShape.createRectangle(0, 0, colW, rowH);
    RShape whiteSquare01 = RShape.createRectangle(0, 50, colW, rowH);
    RShape whiteSquare03 = RShape.createRectangle(0, 150, colW, rowH);
    RShape whiteSquare04 = RShape.createRectangle(0, 200, colW, rowH);
    RShape whiteSquare10 = RShape.createRectangle(50, 0, colW, rowH);
    RShape whiteSquare11 = RShape.createRectangle(50, 50, colW, rowH);
    RShape whiteSquare13 = RShape.createRectangle(50, 150, colW, rowH);
    RShape whiteSquare14 = RShape.createRectangle(50, 200, colW, rowH);
    RShape whiteSquare30 = RShape.createRectangle(150, 0, colW, rowH);
    RShape whiteSquare31 = RShape.createRectangle(150, 50, colW, rowH);
    RShape whiteSquare33 = RShape.createRectangle(150, 150, colW, rowH);
    RShape whiteSquare34 = RShape.createRectangle(150, 200, colW, rowH);
    RShape whiteSquare40 = RShape.createRectangle(200, 0, colW, rowH);
    RShape whiteSquare41 = RShape.createRectangle(200, 50, colW, rowH);
    RShape whiteSquare43 = RShape.createRectangle(200, 150, colW, rowH);
    RShape whiteSquare44 = RShape.createRectangle(200, 200, colW, rowH);
  }

