import processing.pdf.*;

void setup() {

  size(500, 500);
  
  beginRecord(PDF, "grab.pdf"); 
  background(255);
  translate(width/10, height/10);

  //wet
  for (int x = width; x >= width/3; x = x - 100) {
    for (int y = height; y >= height/8; y = y - 80) {

      smooth();
      stroke(255);
      strokeWeight(1);
      fill(30);
      
      beginShape();
      
      vertex(width, height);
      bezierVertex(x, y+50, x, y, 50+x, y+50);
      bezierVertex(width, height, x, y, width-(width/5), height-(height/5));
      bezierVertex(width, height, 0, 0, 0, 0);

      endShape();
    }
  }

  //sharp
  for (int x = 50; x <= width/2; x = x + 80) {
    for (int y = 50; y <= height/5; y = y + 50) {

      smooth();
      stroke(30);
      //      strokeWeight(11);
      strokeWeight(1);
      fill(255);
      
      beginShape();
      
      vertex(0, 50);
      bezierVertex(x, y+50, x, y, 50+x, y+50);
      vertex(0, 0);
      bezierVertex(0, 0, x, y, width-(width/5), height-(height/5));
      vertex(0, 0);
      bezierVertex(0, 0, 0, 0, 0, 0);

      endShape();
    }
  }
  endRecord();
}

