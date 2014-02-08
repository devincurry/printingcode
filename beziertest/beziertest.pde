
float vertex;

void setup() {
  size(1000,1000);
  background(255);
  noFill();
  for (int i = 0; i < height; i = i+1) {
    beginShape();
    vertex (30, 20);
    bezierVertex(width, 0, 0, 0, i, i);
    endShape();
    //just a test
  }
}

