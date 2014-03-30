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

  //beginRecord(PDF, "tanaka01.pdf"); 

  float letters[][] = {
    {
      0, 0, 
      0, 50, 
      0, 100, 
      0, 150, 
      0, 200, 

      50, 0, 
      50, 50, 
      50, 100, 
      50, 150, 
      50, 200, 

      100, 0, 
      100, 50, 
      100, 100, 
      100, 150, 
      100, 200, 

      150, 0, 
      150, 50, 
      150, 100, 
      150, 150, 
      150, 200, 

      200, 0, 
      200, 50, 
      200, 100, 
      200, 150, 
      200, 200,
    }
  };

  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(.65, 0, 1);
  TColor red = TColor.newHSV(1, .85, 1);
  TColor blue = TColor.newHSV(.6, .75, .56);
  TColor green = TColor.newHSV(.42, .72, .6);

  smooth();
  noStroke();
  background(white.hue(), white.saturation(), white.brightness());
  //  background(green.hue(), green.saturation(), green.brightness());
  //  background(blue.hue(), blue.saturation(), blue.brightness());

  fill(red.hue(), red.saturation(), red.brightness());


  WeightedRandomSet<Integer> ran = new WeightedRandomSet<Integer>();

  ran.add(color(black.hue(), black.saturation(), black.brightness()), 16);
  ran.add(color(red.hue(), red.saturation(), red.brightness()), 8);
  ran.add(color(white.hue(), white.saturation(), white.brightness()), 1);

  for (int i = 0; i < 25; i++)
  {
    fill(ran.getRandom());
    rect(0, 0, squareW, squareH);

    fill(ran.getRandom());
    rect(0, 50, squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][4], letters[i][5], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][6], letters[i][7], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][8], letters[i][9], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][10], letters[i][11], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][12], letters[i][13], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][14], letters[i][15], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][16], letters[i][17], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][18], letters[i][19], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][20], letters[i][21], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][22], letters[i][23], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][24], letters[i][25], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);

    fill(ran.getRandom());
    rect(letters[i][0], letters[i][1], squareW, squareH);
  }


  //endRecord();
}

