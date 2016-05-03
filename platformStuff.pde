class CLOUD {
  int x, y, w, t;//type 1 is ground, 2 is thin
  CLOUD(int _x, int _y, int _w, int _t) {
    x = _x;
    y = _y;
    w = _w;
    t = _t;
  }

  void update() {

    if (gx+5 > x && gx - 5 < x + w   && gy > y && gy<=y + gvy) {
      gy = y;
      jump = 0;
      gvy = 0;
    }

    if (t == 2) {
      fill(100);
      rect(x-cameraX, y, w, 5);
    }
    if (t == 1) {
      fill(#5F5E5B);
      rect(x-cameraX, y, w, 100);
    }
  }
}