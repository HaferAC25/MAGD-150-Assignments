//For this assignment, I decided to make something of a game. It's basically just Pong.
boolean gameStart = false;
int pressed=0;
int pressedstate=0;
float x = 150;
float y = 150;
float speedX = random(3, 5);
float speedY = random(3, 5);
int leftColor = 128;
int rightColor = 128;
int diam;
int rectSize = 150;
float diamHit;
PImage winning;
PImage psyched;
PImage outside;
 
 
void setup() {
  size(500, 500);
  winning=loadImage("Are You Winning.jpg");//Are You Winning?
  psyched=loadImage("get_psyched.png");//Get Psyched
  outside=loadImage("Go Outside.jpg");//Go Outside
  noStroke();
  smooth();
  ellipseMode(CENTER);
}
  boolean keypress=false;
void keyPressed(){
  if(keypress==false){
  keypress=true;
  }else{
  keypress=false;
  }
  }
void draw(){
 background(255);
 backgroundPicture();
 //ball
  fill(128,128,128);
  diam = 20;
  ellipse(x, y, diam, diam);
 //wall
  fill(leftColor);
  rect(0, 0, 20, height);
  fill(rightColor);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);
   if (keypress==false){
   opening();//opening screen
   }
 
  if (gameStart) {
 
    x = x + speedX;
    y = y + speedY;
 
    // if ball hits movable bar, invert X direction and apply effects- bar gets smaller
    if ( x > width-30 && x < width -20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) {
      speedX = speedX * -1;
      x = x + speedX;
      rightColor = 0;
      fill(random(0,128),random(0,128),random(0,128));
      diamHit = random(75,150);
      ellipse(x,y,diamHit,diamHit);
      rectSize = rectSize-10;
      rectSize = constrain(rectSize, 10,150);     
    }
 
    // if ball hits wall, change direction of X
    else if (x < 25) {
      speedX = speedX * -1.1;
      x = x + speedX;
      leftColor = 0;
    }
 
    else {    
      leftColor = 128;
      rightColor = 128;
    }
    //reset code
    if (x > width) {
      gameStart = false;
      x = 150;
      y = 150;
      speedX = random(3, 5);
      speedY = random(3, 5);
      rectSize = 150;
    }
 
 
    // if ball hits up or down, change direction of Y  
    if ( y > height || y < 0 ) {
      speedY = speedY * -1;
      y = y + speedY;
    }
  }
}
void mousePressed() {
  gameStart = !gameStart;
}
void opening(){
  image(outside,0,0);//outside pic and text
  text("Okay, now go outside when you are done",140,400);
  image(psyched,50,100);//psyched pic and instructions
  text("keypress to get rid of this, mouse press to start the game",20,60);
}
void backgroundPicture(){
  image(winning,10,100);
  
}
