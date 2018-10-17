int r=60; //radius of petals
float ballX; //x-position of petal center
float ballY; //y-position of petal center
flower f;
flower f1;
void setup() {
  size(1200,1000);
  background(#43AF76);
  
   int r=60;
 int petalColor=#3F8915;
 int numPetals=5;
 int fmove=2;
  
  f =new flower(r, numPetals, 100, 200, petalColor, fmove);
  f1=new flower(r,numPetals,500,300,petalColor*3,fmove*2);
}

void draw(){
f.display();
f.fmove();
f.bounce();

f1.display();
f1.fmove();
f1.bounce();
  }

  
