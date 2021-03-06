import processing.pdf.*;

import toxi.color.*;
import toxi.util.datatypes.*;

float textW;
float textH;

void setup() {

  size (2000, 1000);

  //setting general letter size
  textW = 400;
  textH = 400;

  float letters[][] = {
    {
      // textW/4, (textW-textW/4), textW/2, textW/4, textW/4, textW/2, (textW-textW/4), textH/2, (textW-textW/4), textW/4  // A

      // textW/3, textH/2, textW/3, textH/3, textW/3, textW/3, textW/3, textW/6, (textW-textW/3), textW/3  // B

      // textW/2, textW/4, textW/2, textH/2, 0, 0, textW/2, 0, 0, textW/2 // C

      // textW/4, textW/4, textW/2, textH/2, (textW-textW/4), 0, textW, textH/4, textW, 0  // D

      // (textW-textW/4), textW/4, textW/4, textH/4, textW, textH, textW, (textH-textW/4), (textW-textW/4), (textH-textW/4)  // E

      // (textW-textW/4), (textH-textW/4), textW/4, textH/4, textW, textH/4, textW, textH/2, (textW-textW/4), textH/2  // F

      // (textW-textW/3), textH/4, textW/3, textH/3, (textW-textW/3), (textH-textH/4), (textW-textW/3), textH/2, textW, (textH-textW/4)  // G

      // textW/4, 0, textW/2, textW/2, textW/2, (textH-textH/4), textW/4, textH, (textW-textW/4), textH   // H

      // (textW-textW/2), 0, textW, textH, 0, 0, textW/4, 0, 0, textH  // I

      //  0, 0, textW/2, textH/2, 0, textH/2, textW/4, (textH-textH/4), textW/2, textH/2  // J

      //  textW/4, (textH-textW/3), textW/3, textH/3, textW, 0, textW, (textH-textH/4), textW/3, textH/3 // K

      //  textW/2, 0, textW/2, textH/2, textW/2, textH/2, textW*3/4, (textH-textH/4), textW, textH/2  // L

      //  textW/4, textH*3/4, textW/4, textH/4, textW/2, textH, textW*3/4, textH, textW*3/4, textH*3/4  // M

      //  textW/4, textH*3/4, textW/4, textH/4, 0, 0, textW*3/4, 0, textW*3/4, textH*3/4  // N

      //  textW/4, textW/4, textW/2, textH/2, 0, 0, 0, textH/4, textW/4, 0  // O

      //  textW/4, textW/4, textW/2, textH/2, textW/2, textH, textW, textH, (textW-textW/4), (textH-textW/4)}  // Q

      //  textW/2, textH/4, textW/4, textH/4, textW/4, textH/2, textW/4, textH, textW, textH  // R

      // (textW-textW/4), textW/4, textW/4, textH/4, 0, 0, 0, (textH-textW/4), (textW-textW/4), (textH-textW/4)  // S

      //  (textW-textW/2), textW/4, (textW-textW/4), (textW-textW/4), 0, textW/4, 0, textH, textW/4, textW/4  // T

      //  textW/4, 0, textW/2, textW/2, textW/4, textW/2, textW/4, textH-(textW/4), (textW-textW/4), textW/2   // U

      //        textW/4, 0, textW/4, textW/4, textW, textH, textW, 0, 0, textH   // V

      //  textW/4, 0, textW/4, textH/4, textW/2, 0, textW*3/4, textH/4, textW*3/4, 0  // W
      // textW/2, 0, textW/4, textH/4, textW/2, 0, textW/4, textH/4, textW/4, 0  // W

      //      0, 0, textW/2, textW/2, textW, textH, textW, 0, textW/2, textH   // X
      textW/2, 0, textW/2, textW/2, 0, textH, 0, 0, textW/2, textH/2   // X


      //  textW/2, 0, textW/4, textW/4, textW*3/4, textH, 0, textH, 0, textH/4  // Y

      // textW*3/4, textW/2, textW/4, textH/4, 0, textH, 0, textH/4, textW*3/4, textH/4  // Z
    }
  };

  //  beginRecord(PDF, "grab.pdf"); 

  colorMode(HSB, 1, 1, 1);

  translate(100, 100);

  //color palette
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  //  background(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  background(white.hue(), white.saturation(), white.brightness());

  stroke(white.hue(), white.saturation(), white.brightness());



  for (int i = 0; i < letters.length; i++)
  {
    //each letter is "carved" from this white block
    //    fill(white.hue(), white.saturation(), white.brightness());
    fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
    rect(0, 0, textW, textH);

    //these functions add one black square and one triangle, respectively, to create the letter
    //    fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
    fill(white.hue(), white.saturation(), white.brightness());


    rect(letters[i][0], letters[i][1], letters[i][2], letters[i][3]);
    triangle(letters[i][4], letters[i][5], letters[i][6], letters[i][7], letters[i][8], letters[i][9]);

    translate(textW * 1.2, 0);
  } 



  //  endRecord();
}



/*
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
 
 */
