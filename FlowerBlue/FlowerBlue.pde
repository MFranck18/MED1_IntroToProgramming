int r=60; //radius of petals
float ballX; //x-position of petal center
float ballY; //y-position of petal center

void setup() {
  size(1200,1000);
  background(#43AF76);
}

void draw(){
int petalColor=#3F8915;
flower(r,5,width/2,height/2,petalColor);
flower(r*2,5,1000,600,petalColor);
flower(r*3,6,100,500,petalColor*2);
  }

  
void flower(float r, int numPetals, float x, float y, int petalColor){  

  fill(petalColor);
  
  for (float i=0;i<PI*2;i+=2*PI/numPetals) {
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 

}
 fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
}
