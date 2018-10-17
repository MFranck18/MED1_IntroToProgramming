class flower{
 float x;
 float y;
 float ballX;
 float ballY;
 float xspeed=7;
 float yspeed=7;
 int r;
 int petalColor;
 int fmove;
 int numPetals;
 
  flower(int temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, int speed) // constructor

  {

    r = temp_r;

    numPetals = temp_n_petals;

    x = temp_x;

    y = temp_y;

    petalColor = temp_petalColor;
    
    fmove=speed;

  }
 
 void fmove(){
   x=x+xspeed;
   if(x>width||x<0){
xspeed=xspeed*-1;
}
  y=y+yspeed;
  if(y>height||y<0){
    yspeed=yspeed*-1;
  }
 }
void display(){  

  fill(petalColor);
 
  for (float i=0;i<PI*2;i+=2*PI/numPetals) {
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
}


}
void bounce(){
   if(x==width){
  

}
}
}
