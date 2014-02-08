void setup() {

  size(500, 500);
  background(0);

  for (int x = 0; x <= width/2; x = x + 25) {
    for (int y = 0; y <= height/5; y = y + 50) {
      beginShape();
      //    translate(125, 35);

      vertex(0, 50);
      fill(255, 0, 0);
      ellipse(0, 50, 5, 5);
      bezierVertex(x, y+50, x+25, y, 50+x, y+50);
      fill(255, 0, 0);
      ellipse(25, 0, 5, 5);

      //
      //    bezierVertex(50, 50, 75, 100, 100, 50);
      //    fill(255, 0, 0);
      //    ellipse(50, 50, 5, 5);
      //    ellipse(75, 100, 5, 5);
      //    ellipse(100, 50, 5, 5);
      //
      //    //fill(255);
      //
      //    bezierVertex(100, 50, 125, 0, 150, 50);
      //    fill(255, 0, 0);
      //    ellipse(125, 0, 5, 5);
      //    ellipse(150, 50, 5, 5);

      fill(255);
      //  vertex(150, 150);
      //  vertex(0, 150);
      endShape();
    }
  }
}

