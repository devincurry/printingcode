class Node {

  Node(float _nodeX, float _nodeY) {
    nodeX = _nodeX;
    nodeY = _nodeY;
    //        nodeSize = _nodeSize;
  }

  void displayNode() {
    ellipseMode(CENTER);
    float nodeW = random(10, 40);
    float nodeH = nodeW
    ellipse(nodeX, nodeY, nodeW, nodeH);
  }

