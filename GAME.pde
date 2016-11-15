float x, y, incrementor, flash, angle;

float symptomX = 275;
float symptomY = 340;
        
int yesX = 25;
int dx = 1;
int noX = 425;
int backY = 575;
PFont e, s;
int level = 0;
PImage symptom, one, two, three, four, qualiaG, qualiaR;

import processing.video.*;

Capture cam;

void setup() {
  size(600, 600);
    // Camera initialization
    String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    cam = new Capture(this, cameras[0]);
    cam.start(); } 
    
  e = createFont("EnglishTowne-Normal", 50);
  s = createFont("SteelfishRg-Bold", 32);
  textFont(e);
  x=width /2;
  y = height /2;
  symptom = loadImage("symptom.gif");
  one = loadImage("one.jpg");
  two = loadImage("two.jpg");
  three = loadImage("three.jpg");
  four = loadImage("four.jpg");
  qualiaG = loadImage("qualiaG.png");
  qualiaR = loadImage("qualiaR.png");
 
}

void draw() {  
    //saveFrame();
    // Level navigation (linear)
   if (level == 1)
    {levelOne();}
    else if  (level == 2)
    {levelTwo();}
    else if  (level == 3)
    {levelThree();}
    else if  (level == 4)
    {levelFour();}
    else if  (level == 5)
    {levelFive();}
    else if  (level == 6)
    {levelSix();}
    else if  (level == 7)
    {levelSeven();}
    else if  (level == 8)
    {levelEight();}
    else if  (level == 9)
    {levelNine();}
    else if (level == 10){
     levelTen();}
     else if (level == 11){
      level=0;}
    else {
      background(255);
      textAlign(CENTER, CENTER);
      textSize(20);
      fill(0);
      textFont(s);
      text("begin", height/2, width/2);

      
      if ( (mousePressed) &&
          (mouseX > 280) && (mouseX < 320) &&
          (mouseY > 280) && (mouseY < 320) ) {
            level++; }

    }
}


void levelOne() {
  background(255);
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(255, 0, 0);
  textFont(e);
  text("Do you know love?", width/2, 50);
  // Circle Motion for button
  y = (height / 2)+ 100 * cos(radians(millis()) / 5 );
  x = (width / 2)+ 100 * sin(radians(millis()) / 5 );

  noFill();
  stroke(255, 0, 0);
  strokeWeight(3);
  ellipse(width/2, height/2, 250, 250);
 
  //BUTTON 
  fill(0);
  textSize(30);
  text("YES", x, y);
  float backX = 550;
  fill(0);
  text("back",backX,backY);
  
  
  // Navigation
   if ( (mousePressed) &&
        (mouseX > x-30) && (mouseX < x+30) &&
        (mouseY > y-15) && (mouseY < y+15) ) {
            level++; }
    else if ( (mousePressed) && 
            (mouseX > backX-30) && (mouseX < backX+30) &&
            (mouseY > backY-15) && (mouseY < backY+15) ){
      level--;
    }
}

void levelTwo() {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(0, 255, 0);
  textFont(e);
  text("Do you have fear?", width/2, 50);

  // Moving Door buttons
  strokeWeight(8);
  stroke(0, 255, 0);
  noFill();
  rectMode(CORNER);
  rect(yesX, 175, 150, 300);
  rect(noX, 175, 150, 300);
  // Door Motion
  if ( (mouseY>175+140-10) && (mouseY < 175+180-10) )
  {
  yesX = yesX +dx;
  noX = noX - dx;
  if(yesX >425) { dx = -1;}
  if(yesX <25) { dx = 1;} 
  fill(255,0,0);
  }
  textFont(s);
  text("YES", yesX+125, 315);
  text("NO", noX+129, 315);
  
  float backX = 525;
  fill(255);
  textFont(e);
  textSize(30);
  text("back",backX,backY);
  
  if ( (mousePressed) &&
        (mouseX > yesX) && (mouseX < yesX+150) &&
        (mouseY > 175) && (mouseY < 175+300) || 
        (mousePressed) &&
        (mouseX > noX) && (mouseX < noX+150) &&
        (mouseY > 175) && (mouseY < 175+300) )
         {
            level++; }
    else if ( (mousePressed) && 
            (mouseX > backX-30) && (mouseX < backX+30) &&
            (mouseY > backY-15) && (mouseY < backY+15) ) {
      level--;
    }           
}

void levelThree() {
//Borromean Knot Level
  background(0, 255, 0);
  textAlign(CENTER, CENTER);
  textSize(180);
  fill(0);
  textFont(e);
  text("Make a choice", width/2, height-50);

  
  ellipseMode(CENTER);
  noFill();
  stroke(255, 0, 0);
  strokeWeight(3);
  ellipse(200, 350, 250, 250);
  ellipse(width-200, 350, 250, 250);
  ellipse(width/2, 200, 250, 250);

  textFont(s);
  textSize(40);
  text("a", width/2, height/2-5);
  float bodyX = 200-10;
  float bodyY = 350;
  text("body", bodyX, bodyY);
  float languageX = width-200+10;
  float languageY = 350;
  text("language", languageX, languageY);  
  float illusionX = width/2;
  float illusionY = 200-10;
  text("illusion", illusionX, illusionY);
  
  float backX = 500;
  fill(0);
  textFont(e);
  textSize(30);
  text("back",backX,25);

   if ( (mousePressed) &&
        (mouseX > bodyX-25) && (mouseX < bodyX+25) &&
        (mouseY > bodyY-15) && (mouseY < bodyY+20) || 
        (mousePressed) &&
        (mouseX > languageX-45) && (mouseX < languageX-45+90) &&
        (mouseY > languageY-20) && (mouseY < languageY-20+50) || 
        (mousePressed) &&
        (mouseX > illusionX-45) && (mouseX < illusionX-45+90) &&
        (mouseY > illusionY-20) && (mouseY < illusionY-20+50) )
         { level++; }
    else if ( (mousePressed) && 
            (mouseX > backX-30) && (mouseX < backX+30) &&
            (mouseY > 25-15) && (mouseY < 25+15) ) { level--; }

}

void levelFour() {
  background(255);
  textAlign(CENTER, CENTER);
  textSize(180);
  fill(0);
  textFont(e);
  text("It is your time now", width/2, 50);
  noFill();
  stroke(255, 0, 0);
  strokeWeight(3);
  triangle(width/2, 150, 100, 500, 500, 500);

  rectMode(CENTER);
  textFont(s);
  text("I", width/2, height/2+40);  

  rect(width/2, 123, 70, 40);
  text("speak", width/2, 120);
  rect(70, 533, 70, 40);
  text("listen", 70, 530); 
  rect(530, 533, 70, 40);
  text("ask", 530, 530);
  
  float backX = 500;
  fill(0);
  textFont(e);
  textSize(30);
  text("back",backX,backY);
  
  
   if ( (mousePressed) &&
        (mouseX > 264) && (mouseX < 264+70) &&
        (mouseY > 104) && (mouseY < 104+40) || 
        (mousePressed) &&
        (mouseX > 35) && (mouseX < 35+70) &&
        (mouseY > 515) && (mouseY < 515+40) || 
        (mousePressed) &&
        (mouseX > 495) && (mouseX < 495+70) &&
        (mouseY > 515) && (mouseY < 515+40) )
         { level++; }
   
    else if ( (mousePressed) && 
            (mouseX > backX-30) && (mouseX < backX+30) &&
            (mouseY > backY-15) && (mouseY < backY+15) )
          { level--; }

}


void levelFive() {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(180);
  fill(0, 255, 0);
  textFont(e);
  text("Where do you see yourself?", width/2, height/2);
  noFill();
  stroke(0, 255, 0);
  rectMode(CORNER);
  //1
    imageMode(CORNER);

  float oneX = width/4-100;
  float oneY = height/4-150/2;
  image(one,oneX,oneY);
  rect(oneX,oneY,200,150);
  //2
  float twoX = 3*width/4-100;
  float twoY = height/4-150/2;
  image(two,twoX,twoY);
  rect(twoX,twoY,200,150);
  //3
  float threeX = width/4-100;
  float threeY = 3*height/4-150/2;
  image(three,threeX,threeY);
  rect(threeX, threeY, 200, 150);
  //4
  float fourX = 3*width/4-100;
  float fourY = 3*height/4-150/2;
  image(four,fourX,fourY);
  rect(fourX, fourY, 200, 150);
  
  float backX = 300;
  fill(255);
  textFont(e);
  textSize(30);
  text("back",backX,25);
  
  if ( (mousePressed) &&
        (mouseX > oneX) && (mouseX < oneX+200) &&
        (mouseY > oneY) && (mouseY < oneY+150) || 
        (mousePressed) &&
        (mouseX > twoX) && (mouseX < twoX+200) &&
        (mouseY > twoY) && (mouseY < twoY+150) || 
        (mousePressed) &&
        (mouseX > threeX) && (mouseX < threeX+200) &&
        (mouseY > threeY) && (mouseY < threeY+150) || 
        (mousePressed) &&
        (mouseX > fourX) && (mouseX < fourX+200) &&
        (mouseY > fourY) && (mouseY < fourY+150) )
         { level++; }
   
    else if ( (mousePressed) && 
            (mouseX > backX-30) && (mouseX < backX+30) &&
            (mouseY > 25-15) && (mouseY < 25+15) )
          { level--; }

}

void levelSix() {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(180);
  fill(0, 255, 0);
  textFont(e);
  text("Where do you see yourself", width/2, 30);
  text("in five years?", width/2, 30+50);

// schema L and four buttons
  noFill();
  stroke(0, 255, 0);
  strokeWeight(4);
  rectMode(CORNER);  
  textFont(s);
 
  translate(25,0);

  //button 1 (the real, the death drive)
  float oneX = 50;
  float oneY = height/4;
  text("power",oneX+50,oneY+45);
  rect(oneX, oneY, 100, 100);
  line(150, height/4+50, 400, height/4+50);
  //button 2 (inability to speak)
  float twoX = 370+80;
  float twoY = height/4+50;
  text("anxiety",370+80, height/4+40);
  ellipse(twoX, twoY, 100, 100);
  line(370+80,height/4+100,100,3*height/4-1);
  // button 3 the imaginary
  float threeX = 100;
  float threeY = 3*height/4+50;
  text("dream",100,3*height/4+40);
  ellipse(threeX,threeY,100,100);
  line(150, 3*height/4+50, 400, 3*height/4+50);
  // button 4 the symbolic
  float fourX = 400;
  float fourY = 3*height/4;
  text("action",450,3*height/4+40);
  rect(fourX,fourY,100,100);
  line(100,height/4+100,450,3*height/4);
  
  
  imageMode(CENTER);
  image(symptom, symptomX, symptomY); 
  fill(255);
  text("symptom",symptomX, symptomY);

  float twoD = dist(symptomX,symptomY,twoX,twoY);
  float threeD = dist(symptomX,symptomY,threeX,threeY);
  
   if ( (keyPressed) && (key ==CODED) ) {
   if      (keyCode == RIGHT)   {symptomX ++;}
   else if (keyCode == LEFT)   {symptomX --;}
   else if (keyCode == UP)   {symptomY --;}
   else if (keyCode == DOWN)  {symptomY ++;}
   }
        
      flash= map(cos(incrementor), -5, 1, 0, 255);
      fill(flash,flash,flash,70);
      textSize(70);
      text("use arrow keys",width/2,220);
      text("to move symptom",width/2,380);
      incrementor +=0.05;
      
  float backX = 300;
  fill(255);
  textFont(e);
  textSize(30);
  text("back",backX,backY);
 
  
if ( (symptomX > oneX) && (symptomX < oneX+100) &&
     (symptomY > oneY) && (symptomY < oneY+100) || 
        (twoD < 100) || 
        (threeD < 100) || 
     (symptomX > fourX) && (symptomX < fourX+100) &&
     (symptomY > fourY) && (symptomY < fourY+100) )
         { level++; }
   
    else if ( (mousePressed) && 
            (mouseX > backX-30) && (mouseX < backX+30) &&
            (mouseY > backY-15) && (mouseY < backY+15) )
          { level--; }
  }

void levelSeven() {
  background(255);
  
  y = (height / 2)+ 100 * cos(radians(millis()) / 10 );
  x = (width / 2)+ 100 * sin(radians(millis()) / 10 );
  
         if ( (mouseX > x-125/2) && (mouseX < x+125/2) &&
             (mouseY > y-143/2) && (mouseY < y+143/2) ) { background(255,0,0);}
  else if ( (mouseX > y-125/2) && (mouseX < y+125/2) &&
             (mouseY > x-143/2) && (mouseY < x+143/2) ) { background(0,255,0);}
  
  textAlign(CENTER, CENTER);
  textSize(180);
  fill(0);
  textFont(e);
  text("What is it like?", width/2, 50);
  
  imageMode(CENTER);
  image(qualiaR,x,y); //125.143
  image(qualiaG,y,x);
    
  float backX = 475;
  fill(0);
  textFont(e);
  textSize(30);
  text("back",backX,backY);
  
    if ( (mousePressed) &&
         (mouseX > x-125/2) && (mouseX < x+125/2) &&
         (mouseY > y-143/2) && (mouseY < y+143/2)  || 
         (mousePressed) &&
         (mouseX > y-125/2) && (mouseX < y+125/2) &&
         (mouseY > x-143/2) && (mouseY < x+143/2) )
       { level++; }        
         
    else if ( (mousePressed) && 
            (mouseX > backX-30) && (mouseX < backX+30) &&
            (mouseY > backY-15) && (mouseY < backY+15) )
          { level--; }
  }
  

void levelEight() {
  background(255);
  textAlign(CENTER, CENTER);
  textSize(180);
  fill(0);
  textFont(e);
  text("The results are in", width/2-30, 70);  
  fill(200, 0, 0);
  text("YES", 150, height/2);
  
  float backX = 425;
  fill(0);
  textFont(e);
  textSize(30);
  text("back",backX,backY);
  
    if ( (mousePressed) &&
        (mouseX > 100) && (mouseX < 200) &&
        (mouseY > height/2-20) && (mouseY < height/2+40) ) {
            level++; }
    else if ( (mousePressed) && 
            (mouseX > backX-30) && (mouseX < backX+30) &&
            (mouseY > backY-15) && (mouseY < backY+15) ) {
      level--;
    }

}
void levelNine() {
  background(255);
  textAlign(LEFT);
  textSize(180);
  fill(0);
  textFont(s);
  float desireX = 3*width/4-20;
  float desireY = 150;
  text("desire", desireX, desireY); 
  float knowledgeX = 3*width/4-20;
  float knowledgeY = 200;
  text("knowledge", knowledgeX,knowledgeY);
  float gratitudeX = 3*width/4-20;
  float gratitudeY = 250;
  text("gratitude", gratitudeX,gratitudeY);
  // text("?", 3*width/4-20, 450);
  
  
if ( (mousePressed) &&
        (mouseX > desireX) && (mouseX < desireX+100) &&
        (mouseY > desireY-30) && (mouseY < desireY-30+40) ||
        (mousePressed) &&
        (mouseX > knowledgeX) && (mouseX < knowledgeX+100) &&
        (mouseY > knowledgeY-30) && (mouseY < knowledgeY-30+40) ||
        (mousePressed) &&
        (mouseX > gratitudeX) && (mouseX < gratitudeX+100) &&
        (mouseY > gratitudeY-30) && (mouseY < gratitudeY-30+40)  )
        { level++; }
   
    else if (keyPressed) { level--; }

}

void levelTen() {
 if (cam.available() == true) {
    cam.read();
  }
  image(cam, 200, 240);
textSize(1200);
textAlign(CENTER,CENTER);
textFont(e);
fill(210,0,0);
text("YOUR TIME IS NOW",300,300);

if ( (mousePressed) &&
        (mouseX > 50) && (mouseX < 550) &&
        (mouseY > 250) && (mouseY < 350)  || (keyPressed) )
        { level = 0;} 

}
