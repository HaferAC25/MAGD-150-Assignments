size(1280,800);
}
void draw(){
background (60,100,200);
//this is the field

fill(50,190,100);
noStroke();
rect(0,250,1280,550);

strokeWeight(5);
stroke(200);
beginShape();
vertex(1150,250);
vertex(130,250);
vertex(0,800);
vertex(1280,800);
endShape(CLOSE);

strokeWeight(5);
stroke(200);
line(80,480,1200,480);
fill(200);

//this is the soccer goal

stroke(150);
strokeWeight(5);
beginShape();
vertex(735,190);
vertex(545,190);
vertex(540,250);
vertex(740,250);
endShape(CLOSE);

strokeWeight(3);
rect(550,195,180,40);

line(550,215,735,215);

beginShape();
vertex(735,195);
vertex(715,250);
vertex(740,250);
endShape(CLOSE);

beginShape();
vertex(545,195);
vertex(570,250);
vertex(540,250);
endShape(CLOSE);

// sun

noStroke();
fill(200,200,10);
ellipse(1100,90,100,100);

//cloud-very unique looking (couldn't get it to look right)

stroke(190);
fill(255);
arc(250,100,100,150,0,PI);

stroke(190);
fill(255);
arc(250,110,130,110,0,PI);

fill(255);
strokeWeight(100);
stroke(255);
point(260,100);

fill(255);
strokeWeight(100);
stroke(255);
point(240,100);

//cones

strokeWeight(0);
fill(250,120,10);
triangle(130,250,190,250,160,220);

fill(250,120,10);
triangle(1090,250,1150,250,1120,220);

//soccerball
fill(255);
ellipse(mouseX,mouseY,60,60);

fill(10);
ellipse(mouseX,mouseY,15,15);

}
