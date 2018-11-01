class car{
float x;
float y;


int r;
int Carcolor;
int Carmove;
float circleA=50;
int circleB=35;
int circleC=20;
int circleD=20;  
  
  
 car(int temp_r, float temp_x, float temp_y, int temp_Carcolor, int speed)
 {
   r=temp_r;
   x=temp_x;
   y=temp_y;
   Carcolor=temp_Carcolor;
   Carmove=speed;
 }  
void Carmove(){


  y=y+Carmove;
  if(y>height||y<0){
    Carmove=Carmove*-1;
  }
}
void display(){
fill(Carcolor);
rect(x,y,r,r);
}
void reset(){
  if(dist(circleA, circleB, x, y) < 100){
score=score-1;
  circleA=circleA-x;
  
}
   
}   
}
