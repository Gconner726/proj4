CLOUD c0 = new CLOUD(0, 350, 300, 1);
CLOUD c1 = new CLOUD(50, 300, 100, 2);
CLOUD c2 = new CLOUD(200, 250, 70, 2);
CLOUD c3 = new CLOUD(400, 250, 70, 2);
CLOUD c4 = new CLOUD(350, 350, 1000, 1);
BADGUY jack = new BADGUY(100, 3);


void map1() {

  background(#4FABF5);

  
  guyMotion();
  if (gy > 450) {
    ouch();
  }


  bordersAndCamera();


  map1Scenery();

  

  jump = 1;
  
  c0.update();
  c1.update();
  c2.update();
  c3.update();
  c4.update();




  guy();
  
  
  
  hole(300 - cameraX, 400, 50, 100);

  //p1.update();
  
  jack.update();
}

void map1Scenery() {
  building(200 - cameraX*.8, 150, 300, 500, #713A1A);
  building(20 - cameraX*.8, 100, 170, 500, #E8D2A4);
  tree(400-cameraX*.9, 292, #00aa00, #C6AA90, .8);
  tree(200-cameraX*.9, 292, #00aa00, #C6AA90, .8);
  tree(550-cameraX*.9, 310, #008800, #86AA90, .8);
}