// What to stick in the cornucopia
//squash...
class Squash{
  int centerX, centerY, size;
 
  Squash(){
    centerX = round(random(width));
    centerY = 10;
    size = round(random(50, 100));
  }
 
  // update position
  void update(){
    centerX = round(random(-10,10)) + centerX;
    centerY = centerY + 1;
  }
  void display(){
    fill(200,175,25);
    ellipse(centerX+200,centerY+200,size,size-20);
    text ("SQUASH  stuff it in the cornucopia!", 40,40);
  }
}
//Wizard hat...
class WizardHat{
  int centerX, centerY, size;
 
  WizardHat(){
    centerX = round(random(width));
    centerY = 10;
    size = round(random(50, 100));
  }
 
  // update position
  void update(){
    centerX = round(random(-10,10)) + centerX;
    centerY = centerY + 1;
  }
  void display(){
    fill(185,24,160);
    ellipse(centerX, centerY+5, size+5, size-20);
    triangle(centerX-30, centerY, centerX+30, centerY, centerX, centerY-50);
    fill(0);
    textSize(10);
    text ("WIZARD HAT  stuff it in the cornucopia!", 40,40);
  }
}
// End of enemy class code

//timer
class Timer{
  float startTime, stopTime;
   boolean started = false; 

  Timer(float _stopTime){
    stopTime = _stopTime;
  }

  void timerStart(){
    startTime = millis();
    started = true;
  }
 
  void stopTimer(){
    started = false;
    println("time stopped");
  }
 
  boolean isFinished(){
    float passedTime = millis() - startTime;
    if((passedTime > stopTime) && (started)) {
      return true;
    } else {
      return false;
    }
  }
}

PImage ASLogo;
PImage cornucopia;
WizardHat[] enemies;                         
Timer myTimer;                            
int numberEnemies;
int pressed=0;
int pressedState=0;
void setup(){
  size(800, 600);
  cornucopia=loadImage("Cornucopia.jpg"); //load cornucopia
  ASLogo=loadImage("Adult Swim logo.jpg");//load ASLogo
 //wizard hat
  enemies = new WizardHat[1000];             
  for(int x = 0; x < enemies.length-1; x++){   
    enemies[x] = new WizardHat();

  }
  myTimer = new Timer(2000);     // sets timer to 2 seconds
  myTimer.timerStart();
}
boolean keypress=false;
void keyPressed(){

  if (keypress==false){
keypress=true;
} else {
  keypress=false;
}
}
void draw(){
  background(255);
  if (pressedState==0){
  image(cornucopia,200,300); // cornucopia!
  if(myTimer.isFinished()){                      // whenever the timer goes off, add other enemy
    numberEnemies++;                             // increase the number of enemies
    myTimer.timerStart(); // restart the timer      // restart the timer everytime the timer goes off
  }
  if (numberEnemies == enemies.length-1){         // incase we run out of enemies, restart the count
    numberEnemies = 0;
  }
  for(int newEnemies = numberEnemies; newEnemies > 0 ; newEnemies --){    //  keep track of all the previous
    enemies[newEnemies].update();                                         //  enemies 'spawned'.
    enemies[newEnemies].display();
  }
  }else{
    image(ASLogo,200,200);
 
}
}
