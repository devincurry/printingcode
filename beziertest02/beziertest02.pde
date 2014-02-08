import processing.pdf.*;

// Set these variables to the print size you want (in inches)
// The resulting PDF will be this aspect ratio
float print_width = 15;
float print_height = 15;
float make_bigger = 40;

float vert1X;
float vert1Y;

void setup() {
  size(round(print_width * make_bigger), round(print_height * make_bigger));

  beginRecord(PDF, "grab.pdf");
//  background(0);
  smooth();
  fill(255, 255, 255);

//show the bezier vertex points
  ellipseMode(CENTER);
  fill(255, 0, 0);
//  ellipse((width/2-width/20), height/2, 25, 25);
ellipse(width/2,0,10,10);
ellipse(width/3,0,10,10);


  strokeWeight(10);

  fill(0,255,0);
    for (int i = 0; i <= width; i ++) {
      beginShape();
      vertex (width/2, height/2);
      bezierVertex (width/2,0,0,0,0,0);
//      bezierVertex((width/2-width/20), height/2, width/2, (height/2-height/20), width/2, height/2);
      vertex (0, height);
      bezierVertex (width/3,0,0,0,0,0);
      vertex (width, height);
      endShape();
      endRecord();
    }
}

