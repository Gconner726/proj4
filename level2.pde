CLOUD c5 = new CLOUD(0, 350, 800, 1);
CLOUD c6 = new CLOUD(10, 320, 150, 2);
CLOUD c7 = new CLOUD(100, 250, 70, 2);
CLOUD c8 = new CLOUD(200, 250, 70, 2);
CLOUD c9 = new CLOUD(250, 207, 50, 2);




void map2(){
    
  background(#00aaaa);

  guyMotion();
  if (gy > 450) {
    ouch();
  }


  bordersAndCamera();


  map2Scenery();








  jump = 1;//1 line of code. falling jump fix
  c5.update();
  c6.update();
  c7.update();
  c8.update();
  c9.update();


guy();
  

}




void map2Scenery() {
  cotton(100 - cameraX*.2, 100);
  tree(300-cameraX*.4, 262, #00aa00, #C6AA90, 2);
  tree(350-cameraX*.5, 290, #008800, #86AA90, 2);
}