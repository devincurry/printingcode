import toxi.color.*;
import toxi.util.datatypes.*;

void setup() {
  colorMode(HSB, 1, 1, 1);
  size (500, 500);
  
  TColor myColor = TColor.newHSV(0, 1, 1);
  
  //now you can use functions to manipulate the colors
  //i.e. myColor.desaturate(0.3); or myColor.darken(0.5);
  
  fill(myColor.hue(), myColor.saturation(), myColor.brightness());
  rect(0, 0, width, width);
}
