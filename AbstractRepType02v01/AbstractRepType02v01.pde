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
  randomY = random(150, 450);
  circleRadius = random (50, width);
  circleY = random (10, (height-height/3));


  //now you can use functions to manipulate the colors
  //i.e. myColor.desaturate(0.3); or myColor.darken(0.5);

  //color palette
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor whiteBG = TColor.newHSV(0, 0, 1);
  TColor royalBlue = TColor.newHSV(.65, 1, .4);
  TColor turquoise = TColor.newHSV(.55, 1, .9);
  TColor seaGreen = TColor.newHSV(.45, 1, 1);
  TColor brightGreen = TColor.newHSV(.7, 1, 1);

  background(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
 // background(whiteBG.hue(), whiteBG.saturation(), whiteBG.brightness());
  // background(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness());


  strokeWeight(3);
  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());

  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());


//alpha(HSB);
//
//  fill(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness());
//  ellipseMode(CENTER);
//  ellipse(-50, 200, 300, 300);
//
//  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness());
//  triangle(600, 100, 800, 150, 450, 950);
//
//  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());
//  ellipse(width/3, 400, 600, 600);
//
//  fill(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness());
//  quad(400, width/2, 500, width/2, -150, 750, -50, 850);
//
//  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness());
//  triangle(width/3, 650, 0, width/6, 600, height/2);
//
//  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());
//  quad(650, 850, 800, 850, 950, 0, 850, 0);
//
//  fill(seaGreen.hue(), seaGreen.saturation(), seaGreen.brightness());
//  ellipse(780, 750, 140, 140);
//
//
//  fill(royalBlue.hue(), royalBlue.saturation(), royalBlue.brightness());
//  quad(300, 200, 450, 50, 800, 800, 600, 700);
//  quad(580, 300, 850, 400, 900, 200, 750, 50);


  //  fill(turquoise.hue(), turquoise.saturation(), turquoise.brightness());
  //  ellipse(width/3, 400, 600, 600);

//  stroke(brightGreen.hue(), brightGreen.saturation(), brightGreen.brightness());
//  strokeWeight(2);
//  for (int i = 600; i < width; i = i+25) {
//    for (int j = 150; j <= 450; j = j+200) {
//      stroke(brightGreen.hue(), brightGreen.saturation(), brightGreen.brightness());
//      strokeWeight(2);
//      beginShape();
//      vertex(150, 850);
//      vertex (i, j);
//      endShape();
//    }
//  }
}

