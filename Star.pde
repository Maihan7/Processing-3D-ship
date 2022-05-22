class Star{
  float sHight, sWidth, sLength;
  color starColor;
  
  float starSpeed;
  
  float xRandom, yRandom, zRandom;
  
  Star(){
    
    xRandom = random(700)-random(700); //returns values between 700 & - 700
    yRandom = random(700)-random(700);
    zRandom = 1000+ random(700)-random(700);
    
    sHight = 1.5;
    sWidth = 1.5;
    sLength = 1.5;
    starColor = color(254,219,0);
    starSpeed =9;
  }
  
  void display(){
    if((yRandom<-110)||(yRandom>-11)||(xRandom>65)||(xRandom<-61)){
    pushMatrix();
    translate(xRandom,yRandom,zRandom);
    fill(starColor);
    noStroke();
    box(sHight);
    popMatrix();
  }
     updateStar();
     starCheck();
  }
  
  void updateStar(){  //update star 
       zRandom = zRandom - starSpeed;
  }
  
  void starCheck(){ //check the stars
    if(zRandom < 0){
      zRandom = 1000 + random(600)-random(600);
    }
  }
}
