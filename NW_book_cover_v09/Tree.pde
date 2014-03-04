class Tree {

  float treeX1;
  float treeY1; //X1 and Y1 are the top point of the tree
  float treeX2;
  float treeY2; //X2 and Y2 are the bottom-left corner
  float treeX3;
  float treeY3; //X3 and Y3 are the bottom-right corner
  float treeW; //for generating random width
  float treeH; //for generating random height

  //pass treetop coordinates
  Tree (float _treeX1, float _treeY1) {
    treeX1 = _treeX1;
    treeY1 = _treeY1;
    treeW = random(width/16, width/8);
    treeH = random(height/8, height/5);
  }

  void displayTree() {
    // noStroke();

    //fill trees with random gray tone
    float randomBright = random(.1, .7);
    TColor randomGray = TColor.newHSV(.65, .1, randomBright);
    fill(randomGray.hue(), randomGray.saturation(), randomGray.brightness());

    //generate random tree dimensions
    treeX2 = treeX1 - treeW/2;
    treeX3 = treeX1 + treeW/2;

    treeY2 = height;
    treeY3 = height;

    //draw a tree
    triangle (treeX1, treeY1, treeX2, treeY2, treeX3, treeY3);
  }
}

