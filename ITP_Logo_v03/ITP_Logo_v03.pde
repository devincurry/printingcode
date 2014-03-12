import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;
import toxi.color.*;
import toxi.util.datatypes.*;

float rightAngle = 70;
float leftAngle = 110;

void setup()
{
  size(1000, 720, P3D);
  colorMode(HSB, 1, 1, 1);
  beginRaw(PDF, "ITPlogo01.pdf");

  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  TColor red = TColor.newHSV(1, 1, 1);
  TColor dkWall = TColor.newHSV(1, 0, .35);
  TColor ltWall = TColor.newHSV(1, 0, .65);
  //TColor normWindow = TColor.newHSV(1, .5, 1);
  TColor itpLeft = TColor.newHSV(.15, 1, 1);
  TColor itpRight = TColor.newHSV(.15, 1, .8);

  pushMatrix();
  translate(0, 0, -300);
  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  rect(-4000, -4000, 8000, 8000);
  popMatrix(); 

  //background(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  //  background(white.hue(), white.saturation(), white.brightness());

  noStroke();
  translate(600, 280, 0);

  //right wall
  //  rotateY(radians(50));
  rotateY(radians(rightAngle));

  fill(dkWall.hue(), dkWall.saturation(), dkWall.brightness());

  //right windows
  /*
  rect(0, 50, 200, 30);
   rect(0, 0, 200, 30);
   rect(0, -50, 200, 30);
   */

  rect(0, 50, 600, 25);
  rect(0, 0, 600, 25);
  rect(0, -50, 600, 25);

  //itp floor
  fill(itpRight.hue(), itpRight.saturation(), itpRight.brightness());
  //  rect(0, -100, 200, 30);
  rect(0, -100, 600, 25);


  //left wall
  //  rotateY(radians(90));
  rotateY(radians(leftAngle));


  fill(ltWall.hue(), ltWall.saturation(), ltWall.brightness());
  rect(0, -50, 200, 25);
  rect(0, 0, 200, 25);
  //  rect(0, 50, 200, 35);
  rect(0, 50, 80, 25);
  rect(120, 50, 80, 25);



  //itp floor
  fill(itpLeft.hue(), itpLeft.saturation(), itpLeft.brightness());

  rect(0, -100, 200, 25);

  //door
  //  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  //  rect(-100, 50, 30, 35);

  endRaw();
}

