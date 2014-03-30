import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;
import geomerative.*;

float squareX;
float squareY;

Square[] squares = new Square[25];

void setup()
{
  size(250, 250);
  colorMode(HSB, 1, 1, 1);

  // beginRecord(PDF, "tanaka05.pdf"); 

  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(.65, 0, 1);
  TColor red = TColor.newHSV(1, .85, 1);
  TColor blue = TColor.newHSV(.6, .75, .56);
  TColor green = TColor.newHSV(.42, .72, .6);

  background(white.hue(), white.saturation(), white.brightness());

  smooth();
  noStroke();
  //  background(green.hue(), green.saturation(), green.brightness());
  //  background(blue.hue(), blue.saturation(), blue.brightness());

  //  fill(red.hue(), red.saturation(), red.brightness());



  WeightedRandomSet<Integer> ran = new WeightedRandomSet<Integer>();

  ran.add(color(black.hue(), black.saturation(), black.brightness()), 16);
  ran.add(color(red.hue(), red.saturation(), red.brightness()), 8);
  ran.add(color(white.hue(), white.saturation(), white.brightness()), 1);

  for (int i = 0; i <= 5; i++)
  {
    squares[i] = new Square(i*50, i*50);
  }

  for (int s = 0; s < 25; s++)
  {
    if (s <= 5) {
      squareY = 0;
    }
    else if (s <= 10) {
      squareY = 50;
    }
    else if (s <= 15) {
      squareY = 100;
    }
    else if (s <= 20) {
      squareY = 150;
    }
    else if (s > 20) {
      squareY = 200;
    }
    squares[s].displaySquare();
  }


  /*
  for (int i = 0; i <= 5; i++)
   {
   fill(ran.getRandom());
   rect(i*50, 0, 50, 50);
   fill(ran.getRandom());
   
   rect(i*50, i*50, 50, 50);
   fill(ran.getRandom());
   
   rect(i*50, 50, 50, 50);
   fill(ran.getRandom());
   
   rect(i*50, 100, 50, 50);
   fill(ran.getRandom());
   
   rect(i*50, 150, 50, 50);
   fill(ran.getRandom());
   
   rect(i*50, 200, 50, 50);
   fill(ran.getRandom());
   }
   */

  //endRecord();
}

