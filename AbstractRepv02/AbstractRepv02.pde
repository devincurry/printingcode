import toxi.color.*;
import toxi.util.datatypes.*;

float randomX;
float randomY;
float circleRadius;
float circleX;
float circleY;

void setup() {
  colorMode(HSB, 1, 1, 1);
  size (1000, 1000);

  circleX = random(0, width);
  randomY = random(0, height);
  circleRadius = random (50, width);
  circleY = random (10, (height-height/3));


  //now you can use functions to manipulate the colors
  //i.e. myColor.desaturate(0.3); or myColor.darken(0.5);

  TColor bgColor = TColor.newHSV(.65, 1, .1);
  background(bgColor.hue(), bgColor.saturation(), bgColor.brightness());

  strokeWeight(10);
  stroke(bgColor.hue(), bgColor.saturation(), bgColor.brightness());

  TColor royalBlue = TColor.newHSV(.65, 1, .4);
  fill(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness());
  ellipseMode(CENTER);
  ellipse(-50, 200, 300, 300);

  TColor turquoise = TColor.newHSV(.55, 1, .9);
  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());
  ellipse(width/3, 400, 600, 600);

  TColor seaGreen = TColor.newHSV(.45, 1, 1);
  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness());
  triangle(width/3, 650, 0, width/6, 600, height/2);

  fill(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness());
  quad(300, 200, 450, 50, 800,800, 600,700);
  
    fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());
  ellipse(width/3, 400, 600, 600);
}

