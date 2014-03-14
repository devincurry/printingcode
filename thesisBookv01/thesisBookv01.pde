//import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;
import toxi.color.*;
import toxi.util.datatypes.*;

float node1x;
float node1y;
float node2x;
float node2y;
float node3x;
float node3y;
float node4x;
float node4y;
float node5x;
float node5y;
float node6x;
float node6y;
float node7x;
float node7y;
float node8x;
float node8y;
float node9x;
float node9y;
float node10x;
float node10y;

float nodeSize;


void setup()
{
  size(550, 800);
  colorMode(HSB, 1, 1, 1);
  //beginRecord(PDF, "thesisDev01.pdf");

  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  background(white.hue(), white.saturation(), white.brightness());
  
  noStroke();
  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  
  //randomize circle position
  
  //endRecord();
}

/*
void randomHue() {
  if (itpHue <= 0.55) {
    floorHue = itpHue + .45;
    if (itpHue > 0.55) {
      floorHue = itpHue -.55;
    }
  }
}
*/

