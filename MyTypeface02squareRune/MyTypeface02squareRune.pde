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
    //{textW/4, textW/4, textW/2, textH/2, textW/2, textH, textW, textH, (textW-textW/4), (textH-textW/4)}, // q
    {textW/4, 0, textW/2, textW/2, textW/4, textW/2, textW/4, textH-(textW/4), (textW-textW/4), textW/2} // u
  };

  //  beginRecord(PDF, "grab.pdf"); 

  colorMode(HSB, 1, 1, 1);

  translate(100, 100);

  //color palette
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  background(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  noStroke();

  
  
  for(int i = 0; i < letters.length; i++)
  {
    //each letter is "carved" from this white block
    fill(white.hue(), white.saturation(), white.brightness());
    rect(0, 0, textW, textH);

    //these functions add one black square and one triangle, respectively, to create the letter
    fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  
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
*/
