import processing.pdf.*;

import toxi.color.*;
import toxi.util.datatypes.*;

float textW;
float textH;

void setup() {

  size (1000, 1000);

  //setting general letter size
  textW = 400;
  textH = 400;

  beginRecord(PDF, "letterA.pdf"); 

  colorMode(HSB, 1, 1, 1);

  translate(width/3, height/3);

  //color palette
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  // background(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  background(white.hue(), white.saturation(), white.brightness());
  stroke(white.hue(), white.saturation(), white.brightness());
  strokeWeight(1);

  //each letter is "carved" from this white block
  //  fill(white.hue(), white.saturation(), white.brightness());
  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());

  rect(0, 0, textW, textH);

  //these functions add one black square and one triangle, respectively, to create the letter
  //  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  fill(white.hue(), white.saturation(), white.brightness());


  //  letterQ();
  //  letterU();
  //letterE();
  // letterS();
  //letterT();
  letterA();
  //letterB();
  // letterC();
  endRecord();
}


void letterQ() {
  rect(textW/4, textW/4, textW/2, textH/2);
  //  triangle((textW-textW/4), textH, textW, textH, (textW-textW/4), (textH-textW/4));
  triangle(textW/2, textH, textW, textH, (textW-textW/4), (textH-textW/4));
}

void letterU() {
  rect(textW/4, 0, textW/2, textW/2);
  triangle(textW/4, textW/2, textW/4, textH-(textW/4), (textW-textW/4), textW/2);
}

void letterE() {
  rect((textW-textW/4), textW/4, textW/4, textH/4);
  triangle(textW, textH, textW, (textH-textW/4), (textW-textW/4), (textH-textW/4));
}

void letterS() {
  rect((textW-textW/4), textW/4, textW/4, textH/4);
  triangle(0, 0, 0, (textH-textW/4), (textW-textW/4), (textH-textW/4));
}

void letterT() {
  //  rect((textW-textW/2), textW/2, (textW-textW/4), (textW-textW/4));
  rect((textW-textW/2), textW/4, (textW-textW/4), (textW-textW/4));
  triangle(0, textW/4, 0, textH, textW/4, textW/4);
}

void letterA() {
  //  rect(textW/2, textW/4, textW/4, textW/4);
  rect(textW/4, (textW-textW/4), textW/2, textW/4);
  triangle(textW/4, textW/2, (textW-textW/4), textH/2, (textW-textW/4), textW/4);
}

void letterB() {
  rect(textW/3, textH/2, textW/3, textH/3);
  triangle(textW/3, textW/3, textW/3, textW/6, (textW-textW/3), textW/3);
  // triangle(textW/4, textW/2, (textW-textW/4), textH/2, (textW-textW/4), textW/4);
}

void letterC() {
  rect(textW/2, textW/4, textW/2, textH/2);
  triangle(0, 0, textW/2, 0, 0, textW/2);
}

