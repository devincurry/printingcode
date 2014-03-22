import processing.pdf.*;

import toxi.color.*;
import toxi.util.datatypes.*;

float brightColor;
float midColor;
float darkColor;
float lineColor;

void setup() {

  size (1000, 1000);

  //beginRecord(PDF, "grab.pdf"); 
  colorMode(HSB, 1, 1, 1);

  translate(15, 0);

  //color randomizers
  brightColor = random(0, 1);
  midColor = brightColor+0.1;
  darkColor = brightColor+0.2;
  lineColor = brightColor-0.2;


  //color palette
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor color1 = TColor.newHSV(brightColor, .5, .9);
  TColor color2 = TColor.newHSV(midColor, .5, .9);
  TColor color3 = TColor.newHSV(darkColor, .5, .9);

  background(printBlack.hue(), printBlack.saturation(), printBlack.brightness());

  strokeWeight(2);

  /*
  for (int i = 600; i < width; i = i+25) {
   
   stroke(color3.hue(), color3.saturation(), color3.brightness());
   strokeWeight(2);
   beginShape();
   vertex(180, 900);
   vertex (i, 0);
   endShape();
   }
   */

  strokeWeight(5);
  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());

  ellipseMode(CENTER);

  fill(color2.hue(), color2.saturation(), color2.brightness());
  ellipse(330, 400, 550, 550);

  fill(color3.hue(), color3.saturation(), color3.brightness());
  ellipse(250, 650, 200, 200);

  ellipse(150, 800, 100, 100);

  fill(color1.hue(), color1.saturation(), color1.brightness());
  quad(400, 350, 300, 400, 850, 800, 800, 650);

  fill(color3.hue(), color3.saturation(), color3.brightness());
  quad(680, 250, 400, 400, 480, 600, 850, 250);

  fill(color1.hue(), color1.saturation(), color1.brightness());
  ellipse(700, 300, 300, 300);

  fill(color2.hue(), color2.saturation(), color2.brightness());
  triangle(700, 270, 550, 800, 850, 100);




  /*
  fill(color2.hue(), color2.saturation(), color2.brightness());
   quad(500, 600, 800, 320, 880, 700, 500, 520);
   
   fill(color1.hue(), color1.saturation(), color1.brightness());
   quad(600, 90, 790, 200, 500, 780, 400, 740);
   
   fill(color2.hue(), color2.saturation(), color2.brightness());
   ellipse(width/3, 400, 600, 600);
   
   fill(color1.hue(), color1.saturation(), color1.brightness());
   triangle(width/3, 650, 0, width/6, 600, height/2);
   
   fill(color1.hue(), color1.saturation(), color1.brightness());
   ellipse(780, 750, 140, 140);
   
   fill(color3.hue(), color3.saturation(), color3.brightness());
   quad(580, 300, 850, 400, 900, 200, 750, 50);
   ellipse(300, 350, 250, 250);
   ellipse(680, 600, 100, 100);
   
   fill(color2.hue(), color2.saturation(), color2.brightness());
   quad(320, 250, 420, 450, 380, 500, 280, 450);
   */

  //endRecord();
}

