class Square {

  float squareW = 50;
  float squareH = 50;
  float squareX;
  float squareY;

  Square(float _squareX, float _squareY) {
    squareX = _squareX;
    squareY = _squareY;
  }

    void displaySquare() {
      rect(squareX, squareY, squareW, squareH);
    }
  }


