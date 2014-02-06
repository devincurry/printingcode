import processing.pdf.*;

// Set these variables to the print size you want (in inches)
// The resulting PDF will be this aspect ratio
float print_width = 8;
float print_height = 8;

float make_bigger = 40;

float tri1X;
float tri1Y;
float tri2X;
float tri2Y;
float tri3X;
float tri3Y;

float rectX;
float rectY;
float rectW;
float rectH;

float circ1X;
float circ1Y;
float circ2X;
float circ2Y;

void setup()
{
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  //size(1000, 1000);

  circ1X = width/2;
  circ1Y = height/4;
  circ2X = width/3;
  circ2Y = height/3;

  beginRecord(PDF, "grab.pdf");
  background(0);
  smooth();
  fill(255, 255, 255);

  tri1X = width/2.9;
  tri1Y = height/3;
  tri2X = width - tri1X;
  tri2Y = tri1Y;
  tri3X = width/2;
  tri3Y = height - (height/4.95);

//  translate(width/10, 0);
//translate(0,height/10);
//translate(width/6, (height/16)*-1);
translate(width/8, (height/21)*-1);

  rotate(.33);
  
  translate((width/50)*-1,0);
//  translate((width/21)*-1, height/25);

  stroke(0);
  strokeWeight(3);
  ellipse(circ1X, circ1Y, circ2X, circ2Y);
  triangle(tri1X, tri1Y, tri2X, tri2Y, tri3X, tri3Y);

  fill(0);

  ellipseMode(CENTER);

  fill(0);
  strokeWeight(.5);

  rectW = height/25;
  rectH = rectW;

  fill(0, 0, 0, 0);
  rectMode(CORNER);
  for (rectX = tri1Y; rectX < height; rectX = rectX+height/25) {
    for (rectY = tri1Y; rectY < height; rectY = rectY+height/25)
      rect(rectX, rectY, rectW, rectH);
  }

  endRecord();
}

