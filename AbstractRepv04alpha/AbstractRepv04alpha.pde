import toxi.color.*;
import toxi.util.datatypes.*;

float randomX;
float randomY;
float circleRadius;
float circleX;
float circleY;

void setup() {
colorMode(HSB, 1.0, 1.0, 1.0, 1.0);

//  alpha(HSB);

  size (1000, 1000);

  circleX = random(0, width);
  randomY = random(150, 450);
  circleRadius = random (50, width);
  circleY = random (10, (height-height/3));


  //now you can use functions to manipulate the colors
  //i.e. myColor.desaturate(0.3); or myColor.darken(0.5);

  //color palette
  TColor printBlack = TColor.newHSV(0.65, 1.0, 0.1, 1.0);
  TColor royalBlue = TColor.newHSV(0.65, 1.0, 0.4, 0.5);
  TColor turquoise = TColor.newHSV(0.55, 1.0, 0.9, 0.5);
  TColor seaGreen = TColor.newHSV(0.45, 1.0, 1.0, 0.5);
  TColor brightGreen = TColor.newHSV(0.7, 1.0, 1.0, 1.0);

  background(printBlack.hue(), printBlack.saturation(), printBlack.brightness(), printBlack.alpha());
  // background(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness());


  strokeWeight(10);
  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness(), printBlack.alpha());

  fill(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness(), royalBlue.alpha());
  ellipseMode(CENTER);
  ellipse(-50, 200, 300, 300);

  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness(), seaGreen.alpha());
  triangle(600, 100, 800, 150, 450, 950);

  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness(), turquoise.alpha());
  ellipse(width/3, 400, 600, 600);

  fill(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness(), royalBlue.alpha());
  quad(400, width/2, 500, width/2, -150, 750, -50, 850);

  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness(), seaGreen.alpha());
  triangle(width/3, 650, 0, width/6, 600, height/2);

  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness(), turquoise.alpha());
  quad(650, 850, 800, 850, 950, 0, 850, 0);

  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness(), seaGreen.alpha());
  ellipse(780, 750, 140, 140);


  fill(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness(), royalBlue.alpha());
  quad(300, 200, 450, 50, 800, 800, 600, 700);
  quad(580, 300, 850, 400, 900, 200, 750, 50);


  //  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());
  //  ellipse(width/3, 400, 600, 600);

  stroke(brightGreen.hue(), brightGreen.saturation(), brightGreen.brightness(), brightGreen.alpha());
  strokeWeight(2);
  for (int i = 600; i < width; i = i+25) {
    for (int j = 150; j <= 450; j = j+200) {
      stroke(brightGreen.hue(), brightGreen.saturation(), brightGreen.brightness(), brightGreen.alpha());
      strokeWeight(2);
      beginShape();
      vertex(150, 850);
      vertex (i, j);
      endShape();
    }
  }
}

