void guy() {
  fill(#FF00ff);
  rect(gx-5-cameraX, gy, 20, -40);
}

void M(){
  fill(#6C310F);
  rect(Mx - cameraX, My, 20, -40);
}

class BADGUY {
  float bx, by = 350, bv, bvx, bvy, bt;
  int bd = 1;

  BADGUY(float _bx, float _bv) {
    bx = _bx;
    bv = _bv;
  }
  
  void update() {
    if(gx > bx + 100){
      bx += 3;
    }
    
    if(gx < bx - 100){
      bx -= 3;
    }
    
    
    if(by>= 350){
      by = 350;
    }

     fill(#A2A2A2);
     rect(bx - cameraX, by, 20, -40);
     
     bvy+=1;
     by+=bvy;
  }
}