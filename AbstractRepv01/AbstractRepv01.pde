import toxi.color.*;
import toxi.util.datatypes.*;

float circleRadius = random (20, width/4);
float circleY = random (10, (height-height/3));

void setup() {
  colorMode(HSB, 1, 1, 1);
  size (600, 800);


  //now you can use functions to manipulate the colors
  //i.e. myColor.desaturate(0.3); or myColor.darken(0.5);

  TColor bgColor = TColor.newHSV(.65, 1, .1);
  background(bgColor.hue(), bgColor.saturation(), bgColor.brightness());

  strokeWeight(10);
  stroke(bgColor.hue(), bgColor.saturation(), bgColor.brightness());

  //royal blue
  TColor firstColor = TColor.newHSV(.6, 1, .4);
  fill(firstColor.hue(), firstColor.saturation(), firstColor.brightness());
  for (int a = 0; a < width; a = a + a){
    ellipseMode(CENTER);
    ellipse(a, circleY, a, a);
  }
  
//  rect(0, 0, width/2, width/2);

  //turquoise
  TColor secondColor = TColor.newHSV(.55, 1, .9);
  fill(secondColor.hue(), secondColor.saturation(), secondColor.brightness());
//  rect(width/2, width/2, width/2, width/2);

  //sea green
  TColor thirdColor = TColor.newHSV(.50, 1, 1);
  fill(thirdColor.hue(), thirdColor.saturation(), thirdColor.brightness());
//  rect(0, width/2, width/2, width/2);
}

