void setup(){

size (300,300);
background(10);

fill(150,20,40);
rect(0,250,300,250);

rectMode(RADIUS);
fill(10,10,200);
rect(250,240,30,20,10,10,0,0);

rectMode(RADIUS);
fill(0);
rect(240,235,5,15);

rectMode(RADIUS);
fill(0);
rect(260,230,5,15);

rectMode(CENTER);
fill(10,100,10);
rect(150,90,40,10);

ellipseMode(RADIUS);
fill(300,300,0);
ellipse(50,250,50,40);

ellipseMode(RADIUS);
fill(300,150,0);
noStroke();
ellipse(50,250,40,30);

ellipseMode(CENTER);
fill(10,100,10);
ellipse(145,90,10,40);

ellipseMode(CENTER);
fill(10,100,10);
ellipse(165,85,10,15);

ellipseMode(CENTER);
fill(10,100,10);
ellipse(130,90,10,10);

stroke(100,10,10);
strokeWeight(5);
line(200,10,250,190);

stroke(100,10,10);
strokeWeight(5);
line(70,10,160,190);

stroke(200);
point(160,190);

stroke(200);
point(250,190);
}
