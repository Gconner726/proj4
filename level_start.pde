CLOUD c10 = new CLOUD(0, 250, 800, 1);

void mapStart() {
  background(#F02E18);
  c10.update();
  fill(#6A3806);
  rect(0, 450, 400, -200);
  bordersAndCamera();
  guyMotion();
  if (texttime < 300) {
    textboxes(290, 150, 100, 80);
  }
  if (texttime < 150) {
    fill(0);
    textSize(12);
    text("Jules! Vincent!", 253- cameraX, 138 );
    text("You need to get ", 250- cameraX, 150);
    text("my briefcase", 253- cameraX, 162);
    text("back!", 275- cameraX, 174);
  }
  if (texttime < 300 && texttime > 160) {
    fill(0);
    textSize(12);
    text("It holds", 263- cameraX, 138 );
    text("Something that", 250- cameraX, 150);
    text("is very important", 247- cameraX, 162);
    text("to me!", 275- cameraX, 174);
  }

  textSize(20);
  fill(0);
  text("Retrieve Mr. Wallace's Briefcase", 40 - cameraX, 300);
  text("and return it", 120 - cameraX, 320);

  door(350);


  M();
  guy();
}