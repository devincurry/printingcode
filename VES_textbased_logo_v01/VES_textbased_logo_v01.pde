import processing.pdf.*;

import toxi.color.*;
import toxi.util.datatypes.*;

float w = 300;
float wThird = w/3;
float wHalf = w/2;
float h = 400;
float hHalf = h/2;
float hThird = h/3;

void setup() {

  size (1500, 900);

  //  beginRecord(PDF, "grab.pdf"); 

  colorMode(HSB, 1, 1, 1, 1);

  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

smooth();
  background(white.hue(), white.saturation(), white.brightness());
  noStroke();

  noFill();
//fill(.65, 0, .5, .5);
  strokeWeight(3);
  stroke(black.hue(), black.saturation(), black.brightness());
   // fill(black.hue(), black.saturation(), black.brightness());


//V
//rect(0,0,vW,vH);
translate(100, 200);
//line(0,0,(vW/3)*2,h);
//triangle(0,0,(vW/3)*2,h,(vW/3)*2,0);
triangle(0,0,wHalf,h,wHalf,0);
triangle(wHalf,h,w,0,w+(wThird*2),0);
//triangle(wHalf,hThird*2,wHalf,h,w,hHalf);
triangle(wHalf,hThird*2,wHalf,h,w+(wThird*2),0);


//E
pushMatrix();
translate(w,0);
triangle(0,0,0,h,wHalf,h); //bottom-left
triangle(0,hHalf,0,h,wHalf,hHalf); //crosspiece
triangle(0,h,w,hThird*2,w+wThird,h); //bottom-right
triangle(0,0,w,hThird,w*2,0); //top-right
popMatrix();

//S
pushMatrix();
translate(w*2,0);
triangle(0,0,w,0,w,hThird); //top-right
triangle(0,0,0,hThird,w,hThird*2); //mid-top
triangle(0,hThird,w,hThird*2,w,h); //mid-bottom
triangle(w,hThird*2,w,h,0,h); //bottom-right
popMatrix();
  //  endRecord();
}

