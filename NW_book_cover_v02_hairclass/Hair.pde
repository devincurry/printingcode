class Hair {

  float vert1X;
  float vert1Y;
  float vert2X;
  float vert2Y;
  float bezVert1X;
  float bezVert1Y;
  float bezVert2X;
  float bezVert2Y;

  float hairDist = 10;

  Hair(float _vert1X, float _vert1Y, float _bezVert1X, float _bezVert1Y, float _bezVert2X, float _bezVert2Y, float _vert2X, float _vert2Y) {

    vert1X = _vert1X;
    vert1Y = _vert1Y;
    bezVert1X = _bezVert1X;
    bezVert1Y = _bezVert1Y;
    bezVert2X = _bezVert2X;
    bezVert2Y = _bezVert2Y;
    vert2X = _vert2X;
    vert2Y = _vert2Y;
  }

  void displayHair() {
    vert1X = vert1X - hairDist;
    vert2X = vert2X - hairDist;

    bezier(vert1X, vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, vert2X, vert2Y);
  }
}

