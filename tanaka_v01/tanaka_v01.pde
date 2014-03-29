import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;
import geomerative.*;

void setup()
{
  size(250, 250);
  colorMode(HSB, 1, 1, 1);

  beginRecord(PDF, "tanaka01.pdf"); 

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

  for (int i = 0; i <= 5; i++)
  {
    fill(ran.getRandom());
    rect(i*50, 0, 50, 50);
    fill(ran.getRandom());

    rect(i*50, i*50, 50, 50);
    fill(ran.getRandom());

    rect(i*50, 100, 50, 50);
    fill(ran.getRandom());

    rect(i*50, 150, 50, 50);
    fill(ran.getRandom());

    rect(i*50, 200, 50, 50);
  }


  endRecord();
}

