void setup() {

  size(500, 500);
  background(255);
  translate(width/10, height/10);

  for (int x = 50; x <= width/2; x = x + 80) {
    for (int y = 50; y <= height/5; y = y + 50) {

      smooth();
      strokeWeight(5);
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
}


