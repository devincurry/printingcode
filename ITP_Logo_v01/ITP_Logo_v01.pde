import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;
//import toxi.color.*;
//import toxi.util.datatypes.*;

void setup()
{
  size(640, 360, P3D);
  beginRaw(PDF, "ITPlogo01.pdf");

//  background(0);

  background(0);
  noStroke();
  translate(200, 100, 0);
  rotateY(radians(50));
  rect(0, 0, 200, 30);
  rect(0, 50, 200, 30);
  rect(0, 100, 200, 30);
  rotateY(radians(90));
  fill(255, 0, 0);
  rect(0, 0, 200, 30);
  rect(0, 50, 200, 30);
  rect(0, 100, 200, 30);
  
  endRaw();
}

