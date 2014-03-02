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

      // textW/2, (textH-textW/4), textW/2, textH/4,       textW, textH/4, textW, textH/2, textW/2, textH/2  // F

      // (textW-textW/3), textH/4, textW/3, textH/3, (textW-textW/3), (textH-textH/4), (textW-textW/3), textH/2, textW, (textH-textW/4)  // G

      // textW/4, textH*2/3, textW/2, textW/2, textW/4, textH/3, textW/4, 0, textW*3/4, 0   // H

      // (textW-textW/2), 0, textW, textH, 0, 0, textW/4, 0, 0, textH  // I

      //  0, 0, textW/2, textH/2, 0, textH/2, textW/4, (textH-textH/4), textW/2, textH/2  // J

      //        textW/4, (textH-textW/3), textW/3, textH/3, textW, 0, textW, (textH-textH/4), textW/3, textH/3 // K

      //      textW/4, (textH-textW/4), textW/4, textH/4, textW, 0, textW, textH, textW/4, textH/2 // K2

      //            textW/4, 0, textW/4, textW/8,        textW, 0, textW, textH, textW/3, textH/2 // K3

     // textW*3/4, textW/4, textW/4, textW/2,       textW/4, 0, textW*3/4, 0, textW/4, textH/2 // K4




      //  textW/2, 0, textW/2, textH/2, textW/2, textH/2, textW*3/4, (textH-textH/4), textW, textH/2  // L

      //  textW/4, textH*3/4, textW/4, textH/4, textW/2, textH, textW*3/4, textH, textW*3/4, textH*3/4  // M

      //  textW/4, textH*3/4, textW/4, textH/4, 0, 0, textW*3/4, 0, textW*3/4, textH*3/4  // N

      //  textW/4, textW/4, textW/2, textH/2, 0, 0, 0, textH/4, textW/4, 0  // O

      // textW/2, textH*3/4, textW/2, textH/2, textW/2, textH/4, textW*3/4, textH*3/8, textW/2, textH/2  //P

      //  textW/4, textW/4, textW/2, textH/2, textW/2, textH, textW, textH, (textW-textW/4), (textH-textW/4)  // Q

      //  textW/2, textH/4, textW/4, textH/4, textW/4, textH/2, textW/4, textH, textW, textH  // R

      // (textW-textW/4), textW/4, textW/4, textH/4, 0, 0, 0, (textH-textW/4), (textW-textW/4), (textH-textW/4)  // S

      //  (textW-textW/2), textW/4, (textW-textW/4), (textW-textW/4), 0, textW/4, 0, textH, textW/4, textW/4  // T

      //  textW/4, 0, textW/2, textW/2, textW/4, textW/2, textW/4, textH-(textW/4), (textW-textW/4), textW/2   // U

      //  textW/4, 0, textW/4, textW/4, textW, textH, textW, 0, 0, textH   // V

      // textW/2, 0, textW/4, textH/4, textW/2, 0, textW/4, textH/4, textW/4, 0  // W

      // textW/2, 0, textW/2, textW/2, 0, textH, 0, 0, textW/2, textH/2   // X

      // textW/2, 0, textW/4, textW/4, textW*3/4, textH, 0, textH, 0, textH/4  // Y

      // 0, textH/2, textW/2, textH/2, 0, 0, textW, 0, textW/2, textH/3  // Y

      // textW*3/4, textW/2, textW/4, textH/4, 0, textH, 0, textH/4, textW*3/4, textH/4  // Z
    }
  };

  beginRecord(PDF, "letterK4.pdf"); 

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

  endRecord();
}

