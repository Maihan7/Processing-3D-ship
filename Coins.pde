class Coins{
 
  float rotY, updRotY, checkTransZ;
  int posX, posY;
    
  Coins(){
    rotY = 0;
    updRotY = 0.1;
    checkTransZ = 1500;
    posX = int(random(6));
    posY = int(random(6));
   
  }
  
  void display(){
    stroke(1);
    strokeWeight(1);
    fill(225, 225, 32);
    pushMatrix();
    translate(31-(posX*14.5),-83+(posY*14.5), checkTransZ);
    rotateY(rotY);
    ellipse(0,0,20,20);
    popMatrix();
    rotateCoin();
    colliedCheck();
    updCoin();
    
    pushMatrix();
    rotateY(PI);
    translate(1, -25, -190);
    textSize(20);
    text("Score = "+ int(score_coin), -189, -169, 0);
    popMatrix();
  }
  
  void rotateCoin(){ //spin the coin
    rotY = rotY + updRotY;
    checkTransZ = checkTransZ - speedCoin;
  }
  
  void updCoin(){ //Update Coin
    if (checkTransZ < -55) {
      checkTransZ = 1500+random(700);
      posX = int(random(4));
      posY = int(random(4));
      if (speedCoin<30) {
        speedCoin = speedCoin + 0.75;
      }
    }
  }
  
  void colliedCheck(){
    if ((checkTransZ <55)&&(checkTransZ>35)) {
      if((posX == moveB)&&(posY == moveC)){
         checkTransZ = 1900+random(800);
        posX = int(random(6));
        posY = int(random(6));
        score_coin = score_coin + 100;
        if (speedCoin<15) {
        speedCoin = speedCoin + 0.65;
      }
      }
  }
  }
  
   void resetScoreCoin(){ //Reset the scores of coin
    println("Your Score = " + int(score_coin) +":)");
    score_coin = 0;
    speedCoin = 9;
    checkTransZ = 1500;
    posX = int(random(6));
    posY = int(random(6));
  }
  
  void updScore(){ //Updated Score 
    score_coin = score_coin + updScore;
  }
}
