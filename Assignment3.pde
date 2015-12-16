void setup(){
size(1280,800);
textSize(32);
text("The Longest Day",10,30);
fill(230);
text("The Longest Day",10,30);
}
boolean mousepress=false;
boolean keypress=false;

//changing sky-sun is moving behind clouds
void mousePressed(){
  if (mousepress==false){ 
mousepress=true;
} else {
  mousepress=false;
}
}
void keyPressed(){
  if (keypress==false){ 
keypress=true;
} else {
  keypress=false;
}
}


void draw(){
background(160);

//sand
noStroke();
fill(160);
rect(0,250,1280,720);

//sky
if (mousepress==true){
  fill(190);
  rect(0,0,1280,200);
} else {
fill(180);
rect(0,1280,250,250);
}
fill(175);
arc(1000,0,200,200,0,PI);

fill(175);
arc(500,0,200,200,0,PI);

// helmet reflection
stroke(80);
strokeWeight(5);
line(150,705,600,705);

noStroke();
fill(140);
ellipse(350,960,500,500);

//water

noStroke();
fill(135);
beginShape();
vertex(0,260);
vertex(0,120);
vertex(1280,110);
vertex(1280,250);
endShape(CLOSE);

noStroke();
fill(140);
beginShape();
vertex(0,260);
vertex(0,150);
vertex(1280,140);
vertex(1280,250);
vertex(1280,mouseY);
vertex(0,mouseY);
endShape(CLOSE);

fill(200);
beginShape();
vertex(0,mouseY);
vertex(mouseX,150);
vertex(180,150);
vertex(mouseX,150);
endShape(CLOSE);

stroke(100);
strokeWeight(10);
line(0,115,1280,115);

stroke(90);
strokeWeight(5);
line(50,200,150,200);

stroke(90);
strokeWeight(5);
line(300,160,450,160);

stroke(90);
strokeWeight(5);
line(600,210,750,210);

stroke(90);
strokeWeight(5);
line(860,155,1000,155);

stroke(90);
strokeWeight(5);
line(1100,205,1280,205);


//helmet
noStroke();
fill(55);
arc(400,400,500,600,0,PI);

fill(100);
arc(350,400,500,600,0,PI);

fill(120);
arc(300,400,500,600,0,PI);

fill(50);
arc(350,625,420,160,0,PI);

fill(55);
rect(650,400,20,300);

//seaweed
fill(90);
beginShape();
vertex(680,540);
vertex(680,600);
vertex(1200,600);
vertex(1200,560);
endShape(CLOSE);

triangle(700,550,750,520,765,550);
triangle(760,550,800,520,830,550);
triangle(880,550,910,520,950,550);
triangle(990,560,1010,530,1090,560);
triangle(1090,560,1130,530,1190,560);
triangle(1150,560,1200,530,1200,560);


//rocks
stroke(200);
strokeWeight(50);
point(1000,700);

stroke(90);
strokeWeight(5);
line(975,725,1025,725);

noStroke();
fill(200);
ellipse(50,600,90,60);

stroke(200);
strokeWeight(20);
point(1200,400);

if (keypress==true){
  text("The Longest Day",900,500);
}
 
}
