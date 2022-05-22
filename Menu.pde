class menu {
  float menuTransZ;
  float speedMenu;
  float scoreShow;
  float updateScore;
  float yRotC;
  float rUpdate;

  menu() {
    rUpdate = 0.1;
    yRotC = 0;
    menuTransZ = -300;
    speedMenu = 4;
  }

  void display() {
    if(menuTransZ<160){
    fill(0);
    pushMatrix();
    rotateY(PI);
    translate(0, -30, menuTransZ);
    //fill(0);
    //text("MaihaN", -200,-50,0);
    //textSize(4);
    stroke(0);
    strokeWeight(3);
    fill(221, 221, 33);
    pushMatrix();
    translate(-196,-23, 0);
    rotateY(yRotC);
    ellipse(0,0,15,15);
    popMatrix();
    yRotC = yRotC + rUpdate;
    
    fill(255,255,0);
    textSize(25);
    text("Menu", -31, -170, 0);
    fill(255,255,0);
    rotateX(-0.7);
    textSize(20);
    text("MyShip", -31,-145,4);
    rotateX(0.7);
    fill(255,0,0);
    textSize(15);
    text("CONTROLS", -190, -120, 0);
    textSize(12);
    fill(255,127,80);
    text(" 1) Arrow UP - Move Up", -200, -100, 0);
    fill(173,255,47);
    text("2) Arrow DOWN - Move Down", -200, -80, 0);
    fill(139,69,19);
    text("3) Arrow RIGHT - Move Right", -200, -60, 0);
    fill(107,142,35);
    text("4) Arrow LEFT - Move Left", -200, -40, 0);
    fill(255,20,147);
    text("Maihan Naimi:", -200, 30, 0);
    fill(0,128,128);
    text("Kerri-Ann Norton", -200, 40, 0);
    fill(0,255,0);
    text("class OOP", -200,50, 0);
    fill(255,255,0);
    text("= 100 Points", -185, -20, 0);
    
    fill(255,218,185);
    text(" Press 'S' to Start", 80, -50, 0);
    text("Press 'R' to restart", 80, -40, 0);
    popMatrix();
    
    
    }
    if (text == false ) {
      menuMove();
    }  
  }
  //reset menu
void resetMenu(){
    text = true;
     menuTransZ = -199;
  }
  
  //Move menu
  void menuMove() {
    menuTransZ = menuTransZ+speedMenu;
  }
  
}
