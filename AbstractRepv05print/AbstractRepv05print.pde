import toxi.color.*;
import toxi.util.datatypes.*;
import processing.pdf.*;

float brightColor;
float midColor;
float darkColor;
float lineColor;

void setup() {
  colorMode(HSB, 1, 1, 1);
  size (1000, 1000);

  beginRecord(PDF, "grab.pdf"); 

  translate(15, 0);

  //color randomizers
  brightColor = random(0, 1);
  midColor = brightColor+0.1;
  darkColor = brightColor+0.2;
  lineColor = brightColor-0.2;


  //color palette
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor seaGreen = TColor.newHSV(brightColor, .5, .9);
  TColor turquoise = TColor.newHSV(midColor, .5, .9);
  TColor royalBlue = TColor.newHSV(darkColor, .5, .9);


  background(printBlack.hue(), printBlack.saturation(), printBlack.brightness());

  strokeWeight(2);
  for (int i = 600; i < width; i = i+25) {

    stroke(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness());
    strokeWeight(2);
    beginShape();
    vertex(180, 900);
    vertex (i, 0);
    endShape();
  }

  strokeWeight(5);
  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());

  ellipseMode(CENTER);

  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());
  quad(500, 600, 800, 320, 880, 700, 500, 520);

  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness());
  quad(600, 90, 790, 200, 500, 780, 400, 740);

  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());
  ellipse(width/3, 400, 600, 600);

  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness());
  triangle(width/3, 650, 0, width/6, 600, height/2);

  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness());
  ellipse(780, 750, 140, 140);

  fill(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness());
  quad(580, 300, 850, 400, 900, 200, 750, 50);
  ellipse(300, 350, 250, 250);
  ellipse(680, 600, 100, 100);

  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());
  quad(320, 250, 420, 450, 380, 500, 280, 450);

  endRecord();
}

