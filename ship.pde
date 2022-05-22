class Ship {

  //Ships features

  float rot_Ship, rot_Update;
  float lShip, wShip, hShip; 
  float transX, transY, transZ;
  float tX, tY, tZ;
  float tspeedUpd, tUpdate;
  float updX, updY, updZ;
  float heightT, widthT;
  int rings = 17;
  float shipHeight[] = new float[rings];
  float shipWidth[] = new float[rings];
  color tStroke[] = new color[7];

  //Constructor
  Ship() {
    tspeedUpd = 0.05;
    tUpdate = 0.5;
    rot_Ship = -(HALF_PI/9)*2;
    rot_Update = (HALF_PI/9);
    //ships main Frame width 
    shipWidth[0] = 6.5;
    shipWidth[1] = 6.5;
    shipWidth[2] = 6.5;
    shipWidth[3] = 6.5;
    shipWidth[4] = 6;
    shipWidth[5] = 5.5;
    shipWidth[6] = 5;
    shipWidth[7] = 5;
    shipWidth[8] = 5;
    shipWidth[9] = 5;
    shipWidth[10] = 5;
    shipWidth[11] = 5;
    shipWidth[12] = 3.95;
    shipWidth[13] = 3;
    shipWidth[14] = 1.5;
    shipWidth[15] = 1;
    shipWidth[16] = 0.5;

    //ships main frame height
    shipHeight[0] = 3.5;
    shipHeight[1] = 3.5;
    shipHeight[2] = 3.5;
    shipHeight[3] = 3.5;
    shipHeight[4] = 3.5;
    shipHeight[5] = 3;
    shipHeight[6] = 2.5;
    shipHeight[7] = 2.5;
    shipHeight[8] = 2.5;
    shipHeight[9] = 2.5;
    shipHeight[10] = 2.5;
    shipHeight[11] = 2.5;
    shipHeight[12] = 5;
    shipHeight[13] = 1.5;
    shipHeight[14] = 1;
    shipHeight[15] = 0.5;
    shipHeight[16] = 1;

    tZ = 0;
    tX = 0;
    tY = 0;

    updZ = 1.5;

    lShip = 5.5;
    wShip = 5.5;
    hShip = 10.5;
    

    transX = 0+33;
    transY = -21+(-61);
    transZ = 41.5;
  }

 
  void display() { //Methods
    updZ = 2.5;
    pushMatrix();
    //Translate for move
    translate(transX, transY, transZ); 
    rotateZ(rot_Ship);

    fill(125,21,133);
    strokeWeight(4);
    stroke(125,21,133);


    //The main frame 
    for (int x = 0; x<rings; x++) {
      pushMatrix();
      translate(tX, tY, tZ);
      ellipse(0, 0, shipWidth[x], shipHeight[x]);
      popMatrix();
      tZ = tZ + updZ;
    }
    tZ = 0;

    //central bar for wings
    pushMatrix();
    translate(3, 0, 3.5);
    fill(199, 21, 133);
    strokeWeight(4);
    stroke(94, 94, 94);
    box(11, 2, 4.5);
    popMatrix();

    // Wings on two sides 
    strokeWeight(6);
    pushMatrix();
    translate(4.5, 2, 16);
    rotateY(HALF_PI);
    fill(239, 149, 207);
    stroke(198, 0, 207);
    ellipse(0, 0, 15, 2);
    translate(2, -1, -8.9);
    ellipse(0, 0, 15, 2);
    popMatrix();

    //The middle tarnsparent strips windows 
    pushMatrix();
    fill(239, 149, 207, 100);
    translate(0, -1, -1);
    ellipse(0, 0, 3, 2);
    translate(0, -2.5, 0);
    fill(219,112,147);
    stroke(219,112,147);
    ellipse(0, 0, .5, 5);
    stroke(239, 149, 207, 100);
    fill(239, 149, 207, 100);
    translate(0, 2.5, 1);
    ellipse(0, 0, 2, 3);
    translate(0, -2.5, 0);
    fill(219,112,147);
    stroke(219,112,147);
    ellipse(0, 0, .5, 4.5);
    stroke(239, 149, 207, 100);
    fill(239, 149, 207, 100);
    translate(0, 2.5, 1);
    ellipse(0, 0, 2, 3);
    translate(0, 0, 1);
    ellipse(0, 0, 2, 3);
    translate(0, -2, 0);
    fill(219,112,147);
    stroke(219,112,147);
    ellipse(0, 0, .5, 3);
    stroke(239, 149, 207, 100);
    fill(239, 149, 207, 100); //last one
    translate(0, 2, 1);
    ellipse(0, 0, 2, 3);
    translate(0, 0, 1);
    ellipse(0, 0, 2, 3);
    translate(0, 0, 1);
    ellipse(0, 0, 2, 3);
    translate(0, .1, 1);
    ellipse(0, 0, 2, 3);
    translate(0, .1, 1);
    ellipse(0, 0, 2, 3);
    translate(0, .1, 1);
    ellipse(0, 0, 2, 3);
    translate(0, .1, 1);
    ellipse(0, 0, 2, 3);

    popMatrix();

    //back window for the main frame
    pushMatrix();
    translate(tX, tY, tZ-1);
    fill(239, 149, 207, 100);
    strokeWeight(10);
    stroke(239, 149, 207, 100);
    ellipse(0, 0, 6, 5);

    //front window
    translate(0, -1.4, 25);
    ellipse(0, 0, 3.5, 2.5);
    translate(0, 0, -1.5);
    ellipse(0, 0, 3.5, 2.5);
    popMatrix();
    fill(255); //look back at it
    stroke(255);

   

    heightT = 4;
    widthT = 2;
    tZ=0;
    for (int i = 0; i<7; i++) {
      pushMatrix();
      translate(tX, tY, tZ-3);
      stroke(tStroke[i], 135); 
      ellipse(0, 0, heightT, widthT);
      popMatrix();
      tZ = tZ - updZ;
      updZ = updZ+tUpdate;
      heightT = heightT - 0.25;
      widthT = widthT - 0.5;
    }
    tZ = 0;
// move functions popMatrix
    popMatrix(); 
  }
  //Move functions
  void shipUp() { //Ship Move Up
    transY = transY - 16;
  }


  void shipDown() { //Ship Move down
    transY = transY + 16;
  }

  void shipRight() { //Ship move right
    transX = transX - 17;
    rot_Ship = rot_Ship + rot_Update;
  }
  void shipLeft() { //ship move left
    transX = transX + 17;
    rot_Ship = rot_Ship - rot_Update;
  }
}
