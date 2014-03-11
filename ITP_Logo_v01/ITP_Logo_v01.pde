import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;
import toxi.color.*;
import toxi.util.datatypes.*;

void setup()
{
  size(640, 360, P3D);
    beginRaw(PDF, "ITPlogo01.pdf");

  colorMode(HSB, 1, 1, 1);
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  TColor red = TColor.newHSV(1, 1, 1);

  background(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  noStroke();
  translate(200, 100, 0);
  rotateY(radians(50));
  fill(white.hue(), white.saturation(), white.brightness());
  rect(0, 0, 200, 30);
  rect(0, 50, 200, 30);
  rect(0, 100, 200, 30);
  rotateY(radians(90));
  fill(red.hue(), red.saturation(), red.brightness());
  rect(0, 0, 200, 30);
  rect(0, 50, 200, 30);
  rect(0, 100, 200, 30);

    endRaw();
}

