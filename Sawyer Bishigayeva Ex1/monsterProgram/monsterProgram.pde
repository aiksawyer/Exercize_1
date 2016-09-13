

  
void setup() {  // setup() does not return a value
  size(600, 800);
  background(250);
}

void draw() {  // draw() does not return a value
  drawMowhawk();
  drawHead();
  drawNeck();
  drawBody();
  drawLegs();
  mouseClicked();
  stop();
  
}

void drawMowhawk() {  // This is a mowhawk
  float x = 25.0;
  float y = 2.5;
  strokeWeight(5);
  stroke(random(255), random(255), random(255));
  line(300, 100, 500, 80);
  line(300, 100, 300-x, 170);
  line(300+x, 100-y, 300, 170-y);
  line (300+2*x, 100-2*y, 300+x, 170-2*y);
  line (300+3*x, 100-3*y, 300+2*x, 170-3*y);
  line (300+4*x, 100-4*y, 300+3*x, 170-4*y);
  line (300+5*x, 100-5*y, 300+4*x, 170-5*y);
  line (300+6*x, 100-6*y, 300+5*x, 170-6*y);
  line (300+7*x, 100-7*y, 300+6*x, 170-7*y);
  line (300+8*x, 100-8*y, 300+7*x, 170-8*y);
  stroke(0);
  strokeWeight(1);
}

void drawHead(){  //This is the head
  noFill();
  line (100, 187.5, 475, 150);
  line (150, 287.5, 375, 250);
  bezier(100, 187.5,  275, 180,  200, 287.5, 150, 287.5);
  bezier(475, 150, 350, 200, 350, 200, 375, 250);
  fill(random(255), random(255), random(255));
  ellipse(256, 196, 30, 30);
  fill(0);
  ellipse(256, 196, 10, 10);
  fill(0);
  ellipse(256, 196, 1, 1);
  noFill();
  fill(random(255), random(255), random(255));
  quad(100, 187.5, 103, 204, 112, 207, 111, 187);
  quad(111, 187, 112, 199, 116, 199, 119, 187);
  quad(119, 187, 115, 204,124, 205, 126, 189);
  quad(126, 185, 127, 199, 132, 193, 136, 191);
  quad(135,189,140, 207, 147, 200, 145, 187);
  quad(145, 187, 148, 198, 156, 200, 155, 192);
  quad(137, 272, 150, 288, 159, 287, 153, 273);
  quad(155, 279, 159, 287, 168, 285, 165, 275);
  quad(169, 263, 168,285, 181, 278, 173, 258);
  quad(176, 268, 181, 278, 191, 270, 187, 256);
  noFill();
  
}


void drawNeck(){    //this is neck
  fill(random(255), random(255), random(255));
  quad(315, 259, 221, 323, 470, 291, 374, 250);
  noFill();
}

void drawBody(){   //this is body
  noFill();
  fill(random(255), random(255), random(255));
  bezier(221, 323, 153, 385, 89, 460, 62, 538);
  bezier(62, 538, 186, 575, 340, 512, 444, 489);
  bezier(470, 291, 516, 355, 501, 432, 444, 489);
  ///this is the "wing" part
  bezier(221, 323, 50, 750, 520, 432, 470, 291);
  noFill();
}

void drawLegs(){   ///this is legs
  fill(random(255), random(255), random(255));
  stroke(0);
  rect(136, 551, 22, 70);
  quad(307, 527, 307, 597, 329, 597, 329, 520);
  fill(random(255), random(255), random(255));
  arc(146,656, 90, 70, PI, TWO_PI, PIE);
  arc(319, 632, 90, 70, PI, TWO_PI, PIE);


}


//used this to make compositioning easier
void mouseClicked(){
  println(mouseX, mouseY);
  
}