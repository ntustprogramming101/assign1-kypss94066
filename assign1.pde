int robotX;
int robotY;
int soldierY;
int solidierG; //soldierX
int lineX;
int lineY;
int lifeX;
int lineQ;
int lineW;



PImage backgroundImg;
PImage soil;
PImage life;
PImage groundhog;
PImage robot;
PImage soldier;


void setup() {
	size(640, 480, P2D);
  backgroundImg = loadImage("img/bg.jpg");//Image import
  soil=loadImage("img/soil.png");//Image import
  life=loadImage("img/life.png");//Image import
	groundhog=loadImage("img/groundhog.png");//Image import//Image import
  
  
  //soldier setup
  soldier=loadImage("img/soldier.png");//Image import
  soldierY=floor(random(4)+2);
  soldierY=soldierY*80;
  solidierG=0;
  
 
  //robot setup
  robot=loadImage("img/robot.png");//Image import
  robotX=floor(random(160,560));
  robotY=floor(random(4)+2);
  robotY=robotY*80;
  
 
  //Laser setup
  lineX=robotX+25;
  lineY=robotY;
  lifeX=10;
}

void draw() {
  
  image(backgroundImg,0,0);
  image(groundhog,280,80);
  image(soil,0,160);
  
  //life image
  image(life,lifeX,10);
  image(life,lifeX+70,10);
  image(life,lifeX+140,10);
  
   //Laser
  strokeWeight(10);
  stroke(255,0,0);
  line(lineX+40-lineQ,lineY+37,lineX-lineQ,lineY+37);
  lineW=lineW+2;
  lineQ=lineW%160;
  
 
  
  
  
  
  //robot
  image(robot,robotX,robotY);
  
 
  //soldier
  image(soldier,solidierG,soldierY);
  solidierG++;//soldierMove
  solidierG%=640;

  
  //sod
  rectMode(CORNERS);
  noStroke();
  fill(124,204,25);
  rect(0,145,640,160);
  
  image(groundhog,280,80);
 
  
  
  //sun
  strokeWeight(5);
  stroke(255,255,0);
  fill(253,184,19);
  ellipse(590,50,120,120);
}
