import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;
import geomerative.*;

float squareW = 50;
float squareH = 50;
float randBlack;
float randHue;
float randWhite;
float randOrder;
int rowW = 250;
int rowH = 50;
int colW = 50;
int colH = 250;


void setup()
{
  size(250, 250);
  colorMode(HSB, 1, 1, 1);

  beginRecord(PDF, "tanakamyHue04.pdf"); 



  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(.65, 0, 1);
  //TColor myHue = TColor.newHSV(1, .85, 1); //red
    TColor myHue = TColor.newHSV(.6, .75, .56); //blue
  //TColor myHue = TColor.newHSV(.42, .72, .6); //green

  smooth();
  noStroke();
  background(white.hue(), white.saturation(), white.brightness());
  // background(myHue.hue(), myHue.saturation(), myHue.brightness());

  RG.init(this);


  randOrder = random(0, 6);

  //black, hue, white
  if (randOrder <= 1) {
    fill(black.hue(), black.saturation(), black.brightness());
    drawBlack();

    //    fill(myHue.hue(), myHue.saturation(), myHue.brightness());
    fill(.42, .72, .6);
    drawHue();

    //    fill(white.hue(), white.saturation(), white.brightness());
    fill(.65, 0, 1);
    drawWhite();
  }


  //hue, black, white
  if (randOrder > 1 && randOrder <= 2) {
    fill(myHue.hue(), myHue.saturation(), myHue.brightness());
    drawHue();

    fill(black.hue(), black.saturation(), black.brightness());
    drawBlack();

    fill(white.hue(), white.saturation(), white.brightness());
    drawWhite();
  }

  //white, hue, black
  if (randOrder > 2 && randOrder <= 3) {
    fill(white.hue(), white.saturation(), white.brightness());
    drawWhite();

    fill(myHue.hue(), myHue.saturation(), myHue.brightness());
    drawHue();

    fill(black.hue(), black.saturation(), black.brightness());
    drawBlack();
  }

  //white, black, hue
  if (randOrder > 3 && randOrder <= 4) {
    fill(white.hue(), white.saturation(), white.brightness());
    drawWhite();

    fill(black.hue(), black.saturation(), black.brightness());
    drawBlack();

    fill(myHue.hue(), myHue.saturation(), myHue.brightness());
    drawHue();
  }

  //black, white, hue
  if (randOrder > 4 && randOrder <= 5) {
    fill(black.hue(), black.saturation(), black.brightness());
    drawBlack();

    fill(white.hue(), white.saturation(), white.brightness());
    drawWhite();

    fill(myHue.hue(), myHue.saturation(), myHue.brightness());
    drawHue();
  }

  //hue, white, black
  if (randOrder > 5 && randOrder <= 6) {
    fill(myHue.hue(), myHue.saturation(), myHue.brightness());
    drawHue();

    fill(white.hue(), white.saturation(), white.brightness());
    drawWhite();

    fill(black.hue(), black.saturation(), black.brightness());
    drawBlack();
  }

  endRecord();
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
    //    hueCol2.draw();
    rect(100, 0, colW, colH);
    //    hueCol4.draw();
    rect(200, 0, colW, colH);
  }
  if (randHue >= 2 && randHue < 5) {
    //    hueRow2.draw();
    rect(0, 100, rowW, rowH);
    //    hueRow4.draw();
    rect(0, 200, rowW, rowH);
  }
  if (randHue >= 5 && randHue < 6) {
    //    hueRow2.draw();
    rect(0, 100, rowW, rowH);
    //    hueCol3.draw();
    rect(150, 0, colW, colH);
    //    hueCol4.draw();
    rect(200, 0, colW, colH);
  }
  if (randHue >= 6 && randHue < 8) {
    //    hueRow2.draw();
    rect(0, 100, rowW, rowH);
    //    hueCol2.draw();
    rect(100, 0, colW, colH);
  }
  if (randHue >= 8 && randHue < 10) {
    //    hueRow2.draw();
    rect(0, 100, rowW, rowH);
    //    hueRow4.draw();
    rect(0, 200, rowW, rowH);
    //    hueCol2.draw();
    rect(100, 0, colW, colH);
    //    hueCol4.draw();
    rect(200, 0, colW, colH);
  }
  if (randHue >= 10 && randHue < 11) {
    //    hueRow2.draw();
    rect(0, 100, rowW, rowH);
    //    hueCol2.draw();
    rect(100, 0, colW, colH);
    //    hueCol4.draw();
    rect(200, 0, colW, colH);
  }
  if (randHue >= 11 && randHue < 12) {
    //    hueRow2.draw();
    rect(0, 100, rowW, rowH);
    //    hueCol3.draw();
    rect(150, 0, colW, colH);
  }
  if (randHue >= 12 && randHue < 13) {
    //    hueRow2.draw();
    rect(0, 100, rowW, rowH);
    //    hueRow3.draw();
    rect(0, 150, rowW, rowH);
    //    hueCol2.draw();
    rect(100, 0, colW, colH);
    //    hueCol3.draw();
    rect(150, 0, colW, colH);
  }
  if (randHue >= 13 && randHue < 14) {
    //    hueRow4.draw();
    rect(0, 200, rowW, rowH);
    //    hueCol2.draw();
    rect(100, 0, colW, colH);
  }
  //  fill(myHue.hue(), myHue.saturation(), myHue.brightness());
  //  hueRow2.draw();
}

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

  randWhite = random(0, 12);

  if (randWhite < 3) {
  }
  if (randWhite >= 3 && randWhite < 4) {
    whiteSquare00.draw();
    whiteSquare10.draw();
    whiteSquare40.draw();
    whiteSquare44.draw();
  }
  if (randWhite >=4 && randWhite < 6) {
    whiteSquare10.draw();
    whiteSquare30.draw();
    whiteSquare01.draw();
    whiteSquare11.draw();
    whiteSquare31.draw();
    whiteSquare41.draw();
    whiteSquare03.draw();
    whiteSquare13.draw();
    whiteSquare33.draw();
    whiteSquare14.draw();
  }
  if (randWhite >= 6 && randWhite < 7) {
    whiteSquare00.draw();
    whiteSquare01.draw();
    whiteSquare04.draw();
    whiteSquare14.draw();
    whiteSquare44.draw();
  }
  if (randWhite >= 7 && randWhite < 10) {
    whiteSquare10.draw();
    whiteSquare30.draw();
    whiteSquare11.draw();
    whiteSquare31.draw();
    whiteSquare13.draw();
    whiteSquare33.draw();
    whiteSquare14.draw();
  }
  if (randWhite >= 10 && randWhite < 11) {
    whiteSquare01.draw();
    whiteSquare11.draw();
    whiteSquare31.draw();
    whiteSquare41.draw();
    whiteSquare03.draw();
    whiteSquare13.draw();
    whiteSquare33.draw();
  }
  if (randWhite >= 11 && randWhite <= 12) {
    whiteSquare00.draw();
    whiteSquare40.draw();
    whiteSquare01.draw();
    whiteSquare41.draw();
    whiteSquare03.draw();
    whiteSquare04.draw();
    whiteSquare44.draw();
  }
}

