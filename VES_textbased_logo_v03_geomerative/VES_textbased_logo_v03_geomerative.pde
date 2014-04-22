import processing.pdf.*;

import geomerative.*;

import toxi.color.*;
import toxi.util.datatypes.*;

float w = 300;
float wThird = w/3;
float wHalf = w/2;
float h = 400;
float hHalf = h/2;
float hThird = h/3;

float hueVal = .35;
float alphaVal = .7;

//shapes
RShape vLine11;
RShape vLine12;
RShape vLine13;

RShape vLine21;
RShape vLine22;
RShape vLine23;

RShape vLine31;
RShape vLine32;
RShape vLine33;

RShape eLine11;
RShape eLine12;
RShape eLine13;

RShape eLine21;
RShape eLine22;
RShape eLine23;

RShape eLine31;
RShape eLine32;
RShape eLine33;

RShape eLine41;
RShape eLine42;
RShape eLine43;


void setup() {

  size (1500, 900);

  beginRecord(PDF, "grab03.pdf"); 
  colorMode(HSB, 1, 1, 1, 1);

  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  //shapes
  RG.init(this);

  //V
  //  triangle(0, 0, wHalf, h, wHalf, 0); //left
  vLine11 = RShape.createLine(0, 0, wHalf, h);
  vLine12 = RShape.createLine(0, 0, wHalf, 0);
  vLine13 = RShape.createLine(wHalf, h, wHalf, 0);

  //  triangle(wHalf, h, w, 0, w+(wThird*2), 0); //right
  vLine21 = RShape.createLine(wHalf, h, w, 0);
  vLine22 = RShape.createLine(wHalf, h, w+(wThird*2), 0);
  vLine23 = RShape.createLine(w, 0, w+(wThird*2), 0);

  //  triangle(wHalf, hThird*2, wHalf, h, w+(wThird*2), 0); //bottom
  vLine31 = RShape.createLine(wHalf, hThird*2, wHalf, h);
  vLine32 = RShape.createLine(wHalf, hThird*2, w+(wThird*2), 0);
  vLine33 = RShape.createLine(wHalf, h, w+(wThird*2), 0);


  //E
  //  triangle(0, 0, 0, h, wHalf, h); //bottom-left
  eLine11 = RShape.createLine(0, 0, 0, h);
  eLine12 = RShape.createLine(0, 0, wHalf, h);
  eLine13 = RShape.createLine(0, h, wHalf, h);

  //  triangle(0, hHalf, 0, h, wHalf, hHalf); //crosspiece
  eLine21 = RShape.createLine(0, hHalf, 0, h);
  eLine22 = RShape.createLine(0, hHalf, wHalf, hHalf);
  eLine23 = RShape.createLine(0, h, wHalf, hHalf);

  //  triangle(0, h, w, hThird*2, w+wThird, h); //bottom-right
  eLine31 = RShape.createLine(0, h, w, hThird*2);
  eLine32 = RShape.createLine(0, h, w+wThird, h);
  eLine33 = RShape.createLine(w, hThird*2, w+wThird, h);

  //  triangle(0, 0, w, hThird, w*2, 0); //top-right
  eLine41 = RShape.createLine(0, 0, w, hThird);
  eLine42 = RShape.createLine(0, 0, w*2, 0);
  eLine43 = RShape.createLine(w, hThird, w*2, 0);

  smooth();
  background(white.hue(), white.saturation(), white.brightness());
  // background(black.hue(), black.saturation(), black.brightness());

  //  noStroke();
  strokeWeight(2);
  stroke(black.hue(), black.saturation(), black.brightness());

  //V
  translate(100, 200);
  fill(hueVal, 1, 1, alphaVal);
  vLine11.draw();
  vLine12.draw();
  vLine13.draw();
  //  triangle(0, 0, wHalf, h, wHalf, 0); //left

  fill(hueVal, 1, .75, alphaVal);
  vLine21.draw();
  vLine22.draw();
  vLine23.draw();
  //  triangle(wHalf, h, w, 0, w+(wThird*2), 0); //right

  fill(hueVal, 1, .5, alphaVal);
  vLine31.draw();
  vLine32.draw();
  vLine33.draw();
  //  triangle(wHalf, hThird*2, wHalf, h, w+(wThird*2), 0); //bottom


  //E
  pushMatrix();
  translate(w, 0);

  fill(hueVal, 1, 1, alphaVal);
  eLine11.draw();
  eLine12.draw();
  eLine13.draw();
  //  triangle(0, 0, 0, h, wHalf, h); //bottom-left

  fill(hueVal, 1, .75, alphaVal);
  eLine21.draw();
  eLine22.draw();
  eLine23.draw();
  //  triangle(0, hHalf, 0, h, wHalf, hHalf); //crosspiece

  fill(.4, 1, .5, alphaVal);
  eLine31.draw();
  eLine32.draw();
  eLine33.draw();
  //  triangle(0, h, w, hThird*2, w+wThird, h); //bottom-right

  fill(hueVal, 1, 1, alphaVal);
  eLine41.draw();
  eLine42.draw();
  eLine43.draw();
  //  triangle(0, 0, w, hThird, w*2, 0); //top-right

  popMatrix();

  noStroke();

  //S
  pushMatrix();
  translate(w*2, 0);

  fill(hueVal, 1, .75, alphaVal);
  triangle(0, 0, w, 0, w, hThird); //top-right

  fill(.4, 1, .5, alphaVal);
  triangle(0, 0, 0, hThird, w, hThird*2); //mid-top

  fill(hueVal, 1, 1, alphaVal);
  triangle(0, hThird, w, hThird*2, w, h); //mid-bottom

  fill(hueVal, 1, .75, alphaVal);
  triangle(w, hThird*2, w, h, 0, h); //bottom-right

  popMatrix();

  //stroke(black.hue(), black.saturation(), black.brightness());
  //outline();
  endRecord();
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

