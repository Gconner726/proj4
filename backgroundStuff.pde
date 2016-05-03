void building(float bx, float by, float bw, float bl, color bc) {
  strokeWeight(2);
  stroke(0);
  fill(bc);
  rect(bx, by, bw, bl);
}

void tree(float x, float y, color c1, color c2, float s) {
  fill(c2);
  rect(x-5*s, y, 10*s, 90*s);
  fill(c1);
  ellipse(x, y, 50*s, 50*s);
}

void cotton(float x, float y) {
  fill(255);
  ellipse(x, y, 100, 60);

  fill(0);

  if (random(20) < 1) {//eww
    fill(255);
  }
  ellipse(x-15, y-10, 8, 8);

  fill(0);
  ellipse(x+15, y-10, 8, 8);
  ellipse(x, y+10, 30, 5);
}

void carpet() {
  fill(#F7C3EE);
  beginShape();
  vertex(0, 450);
  vertex(400, 450);
  vertex(370, 300);
  vertex(30, 300);
  endShape(0);
  stroke(0);
  line(370, 300, 400, 0);
  line(30, 300, 0, 0);
}

void textboxes(int x, int y, int l, int w) {
  fill(255);
  ellipse(x - cameraX, y, l, w);
  triangle(x - cameraX, y, x+10 - cameraX, y+10, x - 10 - cameraX, y + 60);
  texttime ++;
}

void door(int x){
  fill(0);
  rect(x - cameraX, 250, 30, -50);
  if(gx>x && gx<x+30 && gy>250 && gy< 300){
    page += 1;
    gx = 0;
    cameraX = 0;
  }
}