import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;
import geomerative.*;

float squareW = 50;
float squareH = 50;

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

  int rowW = 250;
  int rowH = 50;
  int colW = 50;
  int colH = 250;

  WeightedRandomSet<Integer> ran = new WeightedRandomSet<Integer>();

  ran.add(color(black.hue(), black.saturation(), black.brightness()), 18);
  //  ran.add(color(red.hue(), red.saturation(), red.brightness()), 12);
  //  ran.add(color(blue.hue(), blue.saturation(), blue.brightness()), 12);
  ran.add(color(green.hue(), green.saturation(), green.brightness()), 12);

  ran.add(color(white.hue(), white.saturation(), white.brightness()), 8);

  fill(ran.getRandom());
  //  rect(0, 0, shapeSize, shapeSize);

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


  fill(black.hue(), black.saturation(), black.brightness());
  blackCol1.draw();
  blackCol4.draw();
  
  fill(green.hue(), green.saturation(), green.brightness());
  hueRow2.draw();

  /*
  for (int i = 0; i < 25; i++)
   {
   fill(ran.getRandom());
   rect(0, 0, squareW, squareH);
   
   fill(ran.getRandom());
   rect(0, 50, squareW, squareH);
   
   fill(ran.getRandom());
   rect(0, 100, squareW, squareH);
   
   fill(ran.getRandom());
   rect(0, 150, squareW, squareH);
   
   fill(ran.getRandom());
   rect(0, 200, squareW, squareH);
   
   fill(ran.getRandom());
   rect(50, 0, squareW, squareH);
   
   fill(ran.getRandom());
   rect(50, 50, squareW, squareH);
   
   fill(ran.getRandom());
   rect(50, 100, squareW, squareH);
   
   fill(ran.getRandom());
   rect(50, 150, squareW, squareH);
   
   fill(ran.getRandom());
   rect(50, 200, squareW, squareH);
   
   fill(ran.getRandom());
   rect(100, 0, squareW, squareH);
   
   fill(ran.getRandom());
   rect(100, 50, squareW, squareH);
   
   fill(ran.getRandom());
   rect(100, 100, squareW, squareH);
   
   fill(ran.getRandom());
   rect(100, 150, squareW, squareH);
   
   fill(ran.getRandom());
   rect(100, 200, squareW, squareH);
   
   fill(ran.getRandom());
   rect(150, 0, squareW, squareH);
   
   fill(ran.getRandom());
   rect(150, 50, squareW, squareH);
   
   fill(ran.getRandom());
   rect(150, 100, squareW, squareH);
   
   fill(ran.getRandom());
   rect(150, 150, squareW, squareH);
   
   fill(ran.getRandom());
   rect(150, 200, squareW, squareH);
   
   fill(ran.getRandom());
   rect(200, 0, squareW, squareH);
   
   fill(ran.getRandom());
   rect(200, 50, squareW, squareH);
   
   fill(ran.getRandom());
   rect(200, 100, squareW, squareH);
   
   fill(ran.getRandom());
   rect(200, 150, squareW, squareH);
   
   fill(ran.getRandom());
   rect(200, 200, squareW, squareH);
   }
   */

  //endRecord();
}

