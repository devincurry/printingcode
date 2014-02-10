void setup() {

  size(500, 500);
  background(0);
  translate(width/10, height/10);



  //  for (int x = width; x >= width/2; x = x - 80) {
  //    for (int y = height; y >= height/5; y = y - 50) {
  //
  //      smooth();
  //      fill(255);
  //      beginShape();
  //      vertex(0, 50);
  //      bezierVertex(x, y+50, x, y, 50+x, y+50);
  //      vertex(0, 0);
  //      bezierVertex(0, 0, x, y, width-(width/5), height-(height/5));
  //      vertex(0, 0);
  //      bezierVertex(0, 0, 0, 0, 0, 0);
  //
  //      endShape();
  //    }
  //  }

  for (int x = width; x >= width/3; x = x - 100) {
    for (int y = height; y >= height/8; y = y - 80) {

      smooth();
      stroke(255);
      strokeWeight(1);
      fill(0);
      beginShape();
      vertex(width, height);
      bezierVertex(x, y+50, x, y, 50+x, y+50);
      //      vertex(0, 0);
      bezierVertex(width, height, x, y, width-(width/5), height-(height/5));
      //      vertex(0, 0);
      bezierVertex(width, height, 0, 0, 0, 0);

      endShape();
    }
  }
    for (int x = 50; x <= width/2; x = x + 80) {
    for (int y = 50; y <= height/5; y = y + 50) {

      smooth();
      stroke(0);
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
}

