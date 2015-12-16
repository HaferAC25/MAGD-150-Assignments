int pressed = 0;
int pressedState = 0;


void setup(){
  size(1280,800);
  background(20);
}

boolean keypress=false;
void keyPressed(){

  if (keypress==false){
keypress=true;
} else {
  keypress=false;
}
  fill(100);
  rect(0,0,1280,800);
}
void draw(){
  if (pressedState == 0){
  background(20);
  //Equality symbol
  textSize(32);
  //opening text- start of meme
  text("By Legalizing Gay Marriage...",450,100);
  fill(230);
 
  fill(200,50,50);
  rect(300,200,700,400);
  fill(255,190,200);
  rect(400,250,500,100);
  fill(255,190,200);
  rect(400,420,500,100);
 
  } else {
  background(40,50,150);
  // equality sign 
  fill(50,200,50);
  rect(300,200,700,400);
  fill(25,100,20);
  rect(400,250,500,100);
  rect(400,420,500,100);
  fill(255,190,200);
  text("You Can Now Marry Your Lawnmower",350,700);
  //ring
  fill(250,250,10);
  ellipse(1100,400,90,90);
  fill(40,50,150);
  ellipse(1100,400,60,60);
  fill(15,250,210);
  triangle(1100,355,1080,320,1120,320);
  //lawnmower
  fill(45);
  ellipse(mouseX+300,420,10,10);
  ellipse(mouseX+340,420,10,10);
  fill(245,160,20);
  rect(mouseX+295,395,50,20,20,20,0,0);
  strokeWeight(5);
  line(mouseX+300,400,mouseX+285,380);
 
  }
}
// change picture
void mousePressed(){
  pressed += 1;
  pressedState = pressed %2;
}
