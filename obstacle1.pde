class Obstacle1 {
  
  float transZO, translateX, translateY;
  int fCheck; 

  boolean boxC[][] = new boolean [6][6];
  int intBox[][] = new int[6][6];

  Obstacle1() {
    fCheck = 0; //full check equals 0 

    transZO = 2500;
    for (int i = 0; i<6; i++) {
      for (int j = 0; j<6; j++) {
        intBox[i][j] = int(random(6));
        boxC[i][j] = false;
      }
    }
  }

  void display() {
    pushMatrix();
    translate(0, 0, transZO);
    strokeWeight(1.5);
    stroke(0);
    fill(245, 10, 5, 150);
    translate(-43.21, -49.5, 0.2);
    box(10.5, 99, 10.5);
    translate(88.5, 0.5, 0.2);
    box(10.5, 99, 10.5);
    translate(-43.5, -43.25, 0.2);
    box(98, 10.5, 10.5);

    translateX = 30;
    translateY = 10;
    for (int i = 0; i<6; i++) {
      for (int j = 0; j<6; j++) {
        if ((intBox[i][j] >1)&&(intBox[i][j]<10)) {
          fCheck++;
          if(fCheck < 20){
          pushMatrix();
          translate(translateX, translateY, 0);
          box(14.25, 14, 3);
          popMatrix();
          boxC[i][j] = true; //box check i & j equals true
          }
        }
        translateY = translateY + 16;
      }
      translateY = 10;
      translateX = translateX-16.25;
    }
    fCheck = 0;
    popMatrix();

    obsMove();
    obstacleCheck();
    collideCheck();
  }

  void obsMove() {
    transZO = transZO - obsSpeed;
  }

  void obstacleCheck() {
    if (transZO < -35) {
      bObs = bObs + 1;
      transZO = 2000;
      for (int i = 0; i<6; i++) {
        for (int j = 0; j<6; j++) {
          intBox[i][j] = int(random(6));
          boxC[i][j] = false;
        }
      }
      if (obsSpeed<50) {
        obsSpeed = obsSpeed + obsupdatedSpeed;
      }
    }
    
  }

  void collideCheck() {
    if ((transZO <65)&&(transZO>30)) {
      if (boxC[moveB][moveC] == true) {
        pushMatrix();
        rotateY(PI);
        translate(0, -21.5, -190);
        fill(255,0,0);
        textSize(20);
        text("Game Terminated", -75, -125, 12);
        textSize(10);
        text("to Replay Press R", -35, -115.5, 0);
        popMatrix();
        obsSpeed = 0;
        obsupdatedSpeed = 0;
        updScore = 0;
        speedCoin = 0;
        obsSpeed2 = 0;
        obsupdatedSpeed = 0;
        check = true;
        while(K1==0){

        K1++;
        }
      }
    }
  }
  void resetObstacle() {
    for (int i = 0; i<6; i++) {
      for (int j = 0; j<6; j++) {
        intBox[i][j] = int(random(6));
        boxC[i][j] = false;
      }
    }
    obsSpeed = 15;
    transZO = 1500;
    obsupdatedSpeed = 1;
    updScore = 0.5;
  }
}
