void setup() {

size(640,480);
  
}
float x = 0;
float y= 0;
float z=0.01666666666;

float q=0;
float xyz = 0;
float cx=210;
float cy=210;
float anglex=PI/2;
float ca=210;
float cb=210;

void draw() {
  firstTwocycle();
  lastCycle();
}
void firstTwocycle(){
  background(10,10,10);
  stroke(255,255,255);
  fill(10,10,10);
  
  ellipse(100,200,180,180);// first cycle//
 

  
  /*
  ellipse(10,200,10,10);
  ellipse(190,200,10,10); //four dots//
*/


  fill(0);
  stroke(255,0,0);
  //ellipse(300,200,190,190); //red cycle
  
  arc(300,200,190,190,0,x);
  x = x + 0.1;
  if (x>=PI*2) {
    x = 0; //red line//
    y=y+(PI/30);
  }

  
  fill(10,10,10);
  stroke(255);
  ellipse(300,200,180,180);//2 cycle//
  stroke(255,255,255);
  fill(10,10,10);

  
    fill(126,102,104);
  stroke(255,255,255);
  arc(300,200,180,180,0,y);
  
  if(y>=PI*2) y=0;  // second cycle middle grey thing
  
  


  fill(0);
  stroke(255);
  ellipse(100,200, 180,180);
  fill(255);
  cx= sin(xyz)*90;
  cy= cos(xyz)*90;
  xyz = xyz - 0.01;
  ellipse(cx+100,cy+200,10,10);
  ellipse(-cx+100,-cy+200,10,10);
  line(cx+100, cy+200, -cx+100, -cy+200);
  ca=sin(anglex)*90;
  cb=cos(anglex)*90;
  anglex= anglex-0.01;
  ellipse(ca+100,cb+200,10,10);
  ellipse(-ca+100,-cb+200,10,10);
  line(ca+100,cb+200,-ca+100,-cb+200);   //first cycle two lines and dots
  noFill();
  
  
 
  stroke(255);
  ellipse(500,200,180,180);
}

void lastCycle(){
  strokeWeight(5);
  
q=q+0.05;
pushMatrix();
  translate(500, 200);
  for (int i = 0; i< 16; i++){
    arc(0,0,180,50,0+q,0.25+q);
    rotate(PI/4);
    arc(0,0,50,180,0-q,0.05-q);
    //rotate(PI/4);
  }
  
  /*arc(0,0,180,50,0+q,0.25+q);
  rotate(PI/4);
  arc(0,0,180,50,0+q,0.05+q);
  rotate(PI/4);
  arc(0,0,180,50,0+q,0.25+q);
  rotate(PI/4);
  arc(0,0,180,50,0+q,0.05+q);
  rotate(PI/4);
  arc(0,0,180,50,0+q,0.25+q);
  rotate(PI/4);
  arc(0,0,180,50,0+q,0.05+q);
  rotate(PI/4);
  arc(0,0,50,180,0-q,0.25-q);
  rotate(PI/4);
  arc(0,0,50,180,0-q,0.05-q);
  rotate(PI/4);
  arc(0,0,50,180,0-q,0.25-q);
  rotate(PI/4);
    arc(0,0,50,180,0-q,0.05-q);
  rotate(PI/4);
    arc(0,0,50,180,0-q,0.25-q);
  rotate(PI/4);
    arc(0,0,50,180,0-q,0.25-q);
  rotate(PI/4);
    arc(0,0,50,180,0-q,0.05-q);
  rotate(PI/4);
    arc(0,0,50,180,0-q,0.25-q);
  rotate(PI/4);
  */
  
  //arc(500,150,100,50,0+q,1+q);
  
  popMatrix();
  strokeWeight(1);
}

  
  
  
  
  

 
  
  



