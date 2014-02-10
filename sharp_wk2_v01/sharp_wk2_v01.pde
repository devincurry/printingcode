void setup() {

  size(500, 500);
  background(255);
  translate(width/10, height/10);


  //for (int x = 0; x <= width/2; x = x + 5) {
  for (int x = 50; x <= width/2; x = x + 80) {
    for (int y = 50; y <= height/5; y = y + 50) {

       // fill(255);
      smooth();
      strokeWeight(5);
      fill(255);
      beginShape();
      vertex(0, 50);
      //bezierVertex(x, y+50, x+25, y, 50+x, y+50);
      bezierVertex(x, y+50, x, y, 50+x, y+50);

      vertex(0, 0);
      bezierVertex(0, 0, x, y, width-(width/5), height-(height/5));
      vertex(0, 0);
      bezierVertex(0, 0, 0, 0, 0, 0);



      endShape();
    }
  }
  //  for (int x2 = 150; x2 <= width/2; x2 = x2 + 25) {
  //    for (int y2 = 150; y2 <= height/5; y2 = y2 + 50) {
  //      fill(255);
  //      beginShape();
  //      vertex(500, 300);
  //      bezierVertex(x2, y2+50, x2+25, y2, 50+x2, y2+50);
  //      endShape();
  //    }
}
//}

