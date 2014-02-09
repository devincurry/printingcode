void setup() {

  size(500, 500);
  background(0);
    translate(width/4,height/4);


  for (int x = 0; x <= width/2; x = x + 25) {
    for (int y = 0; y <= height/5; y = y + 50) {

      fill(255);
      beginShape();
      //              translate(125, 35);

      vertex(0, 50);
      //fill(255, 0, 0);
//      ellipse(0, 50, 5, 5);
      bezierVertex(x, y+50, x+25, y, 50+x, y+50);
      //  fill(255, 0, 0);
//      ellipse(25, 0, 5, 5);
      vertex(0,0);
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

