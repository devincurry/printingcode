
float vertex;

void setup() {
  size(1000, 1000);
  background(255);
  noFill();
  for (int i = 0; i < height; i = i+1) {
    for (int j = 0; j < width; j = j+width/20) {
      beginShape();
      vertex (30, 20);
      bezierVertex(width, 0, j, i, j, i);
      //    vertex (800, 500);
      //    bezierVertex(width, 0, i, 0, 0, i);
      //    vertex (0, height);
      //   bezierVertex(width, 0, i, 0, 0, i);
      //    vertex (width, height);
      //    bezierVertex(width, height, 0, i, 0, i);
      endShape();
    }
  }
}

