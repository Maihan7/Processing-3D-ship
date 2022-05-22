int K1 = 0;
int p = 0;
int bObs;
float speedCoin = 5;
float score_coin = 0;
float updScore=.25;

float obsSpeed = 5;
float obsupdatedSpeed = .7;
float obsSpeed2;
float oSpeedUpdB = 0.7;

//Classes Initialization 
int star = 20000;
Star[] allStar = new Star[star];
Ship v1;
menu m1;
Obstacle1 o1;
Coins c1;
//ObstacleB oB1;
float yRot;

int moveB = 0, moveC = 0;

float linesTransX, linesTransZ;

boolean text = true, check = false;
float xT = 0, yT = 0;

void setup() {
  size(1390, 1055, P3D);
  cursor(CROSS); //change mouse to cursor 
  
   //Set Classes 
  bObs = 0;
  textMode(SHAPE);
  o1 = new Obstacle1();
  m1 = new menu();
  c1 = new Coins();
  starsCreate();
  v1 = new Ship();
  linesTransX = 0;
  linesTransZ = 0;
  

}

void draw() {
   pushMatrix();
  translate(700, 620, 870);
  rotateY(PI); //Rotates shape around the y-axis the amount 
  //specified by the angle parameter. 

 //Drawing the Runway
  background(0);
  noStroke(); //Disables drawing the stroke (outline)
  pushMatrix(); //Pushes the current transformation matrix onto the matrix stack. 
    
//Specifies an amount to move objects within the display window
//x parameter left/right translation, y parametere up and down,
//z parameter toward/away from screen 
  translate(0, 0, 2000); 
  
  fill(255, 150, 50,170);
  box(100, 30, 5000);
  popMatrix();  // //PopMAtrix is at end of the runway

  
  for (int i = 0; i<6; i++) {
    pushMatrix();
    translate(linesTransX+6.95, 0, 2500);
    linesTransX = linesTransX - 15.25;
    stroke(0);
    strokeWeight(0.5);
    fill(255, 100);
    box(1, 32.5, 5000); //is an extruded rectangle. 
    popMatrix();// Pops the current transformation matrix off the matrix stack.
  }

  linesTransX = 32;
  linesTransZ = 0;
  
  //Display Moving Stars and Vehicle
  v1.display();
  for (int i =0; i < star; i++) {
    allStar[i].display();
  }
  
   m1.display();

  //After Menu Functions "s"
  if (text == false) {
    o1.display();
    c1.updScore();
    c1.display();
    if (bObs > 5) {
      obsSpeed2 = obsSpeed;
    }
  }

    popMatrix(); 
     //starting the game 
  if ((keyPressed == true)&&(key == 'S')||(key =='s')) {
    text = false;
    bObs = 0;
    while (p==0) {
      p++;
    }
  }
  
  
 //For replay the gaame
  if ((keyCode == 'R')||(keyCode == 'r')) {
    check = false;
    m1.resetMenu();
    o1.resetObstacle();
    c1.resetScoreCoin();
   
    K1=0;
    p=0;
  }
}


//Key FUnctions for Movement and change variables for collision check
void keyPressed() {
  if (check == false) {
    if (keyCode == LEFT) {
      if ((moveB < 5)&&(moveB >0)) {
        v1.shipLeft();
        moveB = moveB-1;
      }
    }
    if (keyCode == RIGHT) {
      if ((moveB < 4)&&(moveB > -1)) {
        v1.shipRight();
        moveB = moveB + 1;
      }
    }
    if (keyCode == UP) {
      if ((moveC < 5)&&(moveC > 0)) {
        v1.shipUp();
        moveC = moveC - 1;
      }
    }
    if (keyCode == DOWN) {
      if ((moveC < 4)&&(moveC > -1)) {
        v1.shipDown();
        moveC = moveC + 1;
      }
    }
  }

}
//Function for making the stars 
void starsCreate() {
  for (int i =0; i < star; i++) {
    allStar[i] = new Star();
  }
}
