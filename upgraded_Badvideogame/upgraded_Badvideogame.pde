int circleA=50;
int circleB=35;
int circleC=20;
int circleD=20;
int speed=2;
int speed2=5;

int speed1=3;
car[]c =new car [3];
int line1=580;
int line2=20;
float display_lw=40; //length and width of the fields for displaying game data/results
float field1;
car c1;
car c2;
int score=0;
int r=60;
int Carcolor=#FF056E;
int Carmove=2;
void setup(){
 size(600,400); 
 width=600;
 height=400;
c1=new car(r, 200, 300, Carcolor, Carmove);
c2=new car(r,400, 200, Carcolor*3,Carmove*5);


int separation = 0;
for (int i=0;i<c.length;i++)
{
  c[i] = new car(r, 400, separation, Carcolor * 3, Carmove * 5);
  separation += 200;
}


field1=width-display_lw;
}
void draw(){
  background(22,45,45);
  fill(50,50,50);
  ellipse(circleA,circleB,circleC,circleD);
  line(field1,0,field1,height);
//i want a scoreboard
textSize(40);
textAlign (CENTER);  
 
 fill(200,0,100);
     rect(field1,height-display_lw,display_lw,display_lw);
     fill(0);
     text(score, field1+display_lw/2,height); 

c1.display();
c1.Carmove();
c1.reset();

c2.display();
c2.Carmove();
c2.reset();

for(int i=0;i<c.length;i++)
{
c[i].display();
c[i].Carmove();
c[i].reset();
}
 //i want the mouse to begin the game  
   if(mouseX>0){
      circleA=circleA+2;
   }//i want the circle to respawn at the beginning
   if(circleA>width){
     circleA=circleA-600;
   }
   if(circleA>598){
    score=score+1;
   }
  
stroke(200);


 //i want the mouse to boost the ball
if((mouseX>circleA)&&(mouseX<circleA+circleB)||((mouseY>circleB)&&(mouseY<circleD))){
  circleA=circleA+2;
  
}



 //I want to reset the circle if it hits the car


}//I want an up and down key
void keyPressed(){
  if(key=='s'||key=='S')
  circleB=circleB+15;


  else if(key=='w'||key=='W')
  circleB=circleB-15;
  
  else if(key=='d')
  circleB=circleB+speed2;
}
