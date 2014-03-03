class Tree {

  float treeX1;
  float treeY1;
  float treeX2;
  float treeY2;
  float treeX3;
  float treeY3;
  float treeW;
  float treeH;

  float h = 1; //hue
  float s = 0; //saturation
  float b; //brightness
  float a = 0.5; //alpha

  Tree (float _treeX1, float _treeY1) {

    //  Tree (float _treeX1, float _treeY1, float _treeX2, float _treeY2, float _treeX3, float _treeY3) {
    treeX1 = _treeX1;
    treeY1 = _treeY1;
    //    treeX2 = _treeX2;
    //    treeY2 = _treeY2;
    //    treeX3 = _treeX3;
    //    treeY3 = _treeY3;
    treeW = random(width/16, width/8);
    treeH = random(height/8, height/6);
//    b = random(.1, .7);
  }

  void displayTree() {
//    h = 1;
//    s = 0;
//    a = 0.5;
//    b = random(.1, .7);

    float randomBright = random(.1, .7);
    TColor randomGray = TColor.newHSV(.65, .1, randomBright);
    fill(randomGray.hue(), randomGray.saturation(), randomGray.brightness());

    treeX2 = treeX1 - treeW/2;
    treeX3 = treeX1 + treeW/2;
    treeY2 = treeY1 + treeH;
    treeY3 = treeY2;
//    fill(h, s, b, a);

    triangle (treeX1, treeY1, treeX2, treeY2, treeX3, treeY3);
  }
}

