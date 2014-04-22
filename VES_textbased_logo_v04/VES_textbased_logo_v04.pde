import processing.pdf.*;

import toxi.color.*;
import toxi.util.datatypes.*;

boolean savePDF = false;

float w = 300;
float wThird = w/3;
float wHalf = w/2;
float h = 400;
float hHalf = h/2;
float hThird = h/3;

//float hueVal = .35;
float hueVal;
//float alphaVal = .7;
float alphaVal;
TColor black = TColor.newHSV(.65, 1, .1);
TColor white = TColor.newHSV(1, 0, 1);

void setup() {

  size (1500, 900);

  //beginRecord(PDF, "grab03.pdf"); 
  colorMode(HSB, 1, 1, 1, 1);

  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  smooth();
  //  background(white.hue(), white.saturation(), white.brightness());
}

void draw() {
  if (savePDF) {
    println("Saving PDF");
    beginRecord(PDF, "grab" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + "_" + millis() + ".pdf");
  }

  background(black.hue(), black.saturation(), black.brightness());

  noStroke();

  hueVal = map(mouseX, 0, width, 0, 1);
  alphaVal = map(mouseY, 0, height, 0, 1); 
  //    hueVal = random(1);//noise(float(frameCount)/100);//map(mouseX, 0, width, 0, 1);
  //    alphaVal = random(1);//noise(float(frameCount)/300);//map(mouseY, 0, height, 0, 1); 

  //V
  translate(100, 200);
  fill(hueVal, 1, 1, alphaVal);
  triangle(0, 0, wHalf, h, wHalf, 0); //left

  fill(hueVal, 1, .75, alphaVal);
  triangle(wHalf, h, w, 0, w+(wThird*2), 0); //right

  fill(hueVal, 1, .5, alphaVal);
  //triangle(wHalf,hThird*2,wHalf,h,w,hHalf); //bottom
  triangle(wHalf, hThird*2, wHalf, h, w+(wThird*2), 0); //bottom


  //E
  pushMatrix();
  translate(w, 0);

  fill(hueVal, 1, 1, alphaVal);
  triangle(0, 0, 0, h, wHalf, h); //bottom-left

  fill(hueVal, 1, .75, alphaVal);
  triangle(0, hHalf, 0, h, wHalf, hHalf); //crosspiece

  fill(hueVal, 1, .5, alphaVal);
  triangle(0, h, w, hThird*2, w+wThird, h); //bottom-right

  fill(hueVal, 1, 1, alphaVal);
  triangle(0, 0, w, hThird, w*2, 0); //top-right

  popMatrix();

  //S
  pushMatrix();
  translate(w*2, 0);

  fill(hueVal, 1, .75, alphaVal);
  triangle(0, 0, w, 0, w, hThird); //top-right

  fill(hueVal, 1, .5, alphaVal);
  triangle(0, 0, 0, hThird, w, hThird*2); //mid-top

  fill(hueVal, 1, 1, alphaVal);
  triangle(0, hThird, w, hThird*2, w, h); //mid-bottom

  fill(hueVal, 1, .75, alphaVal);
  triangle(w, hThird*2, w, h, 0, h); //bottom-right

  popMatrix();

  stroke(black.hue(), black.saturation(), black.brightness());
  //outline();
  
  if (savePDF) {
    endRecord();
    println("Saved PDF");
    savePDF = false;
  }
}  




void outline() {
  noFill();
  strokeWeight(3);

  //V
  triangle(0, 0, wHalf, h, wHalf, 0); //left
  triangle(wHalf, h, w, 0, w+(wThird*2), 0); //right
  //triangle(wHalf,hThird*2,wHalf,h,w,hHalf); //bottom
  triangle(wHalf, hThird*2, wHalf, h, w+(wThird*2), 0); //bottom

  //E
  pushMatrix();
  translate(w, 0);
  triangle(0, 0, 0, h, wHalf, h); //bottom-left
  triangle(0, hHalf, 0, h, wHalf, hHalf); //crosspiece
  triangle(0, h, w, hThird*2, w+wThird, h); //bottom-right
  triangle(0, 0, w, hThird, w*2, 0); //top-right
  popMatrix();

  //S
  pushMatrix();
  translate(w*2, 0);
  triangle(0, 0, w, 0, w, hThird); //top-right
  triangle(0, 0, 0, hThird, w, hThird*2); //mid-top
  triangle(0, hThird, w, hThird*2, w, h); //mid-bottom
  triangle(w, hThird*2, w, h, 0, h); //bottom-right
  popMatrix();
}

void keyPressed() {
  if(key == 's') {
    savePDF = true;
  }
}

