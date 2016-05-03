float gx, gy, gvy, gd =1, Mx = 250, My = 250, bgx, bgy; 
int goRight, goLeft, jump;
int page = 0;
int texttime;

//asd
//wdads
void setup() {
  size(400, 450);
  frameRate(30);
  noStroke();
}



void draw() {
  background(255);
if (page == 0){
  mapStart();
}

  if (page == 1) {  
    map1();
  }

  if (page == 2) {  
    map2();
  }
}


void guyMotion() {
  if (goRight == 1) {
    gx += 5;
  }
  if (goLeft == 1) {
    gx -=5;
  }
  gvy+=1;
  gy+=gvy;
}

void keyPressed() {
  if (jump == 0 && keyCode == UP) {
    jump = 1;
    gvy = -14;
  }
  if (keyCode == RIGHT) {
    goRight = 1;
  }
  if (keyCode == LEFT) {
    goLeft= 1;
  }
}


void keyReleased() {
  if (keyCode == RIGHT) {
    goRight = 0;
  }
  if (keyCode == LEFT) {
    goLeft= 0;
  }
}