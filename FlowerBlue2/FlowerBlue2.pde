int r=60; //radius of petals
float ballX; //x-position of petal center
float ballY; //y-position of petal center
flower[]f=new flower [6];
flower f1;
flower f2;
flower f3;
void setup() {
  size(1200,1000);
  background(#43AF76);
  
   int r=60;
 int petalColor=#3F8915;
 
 int numPetals=5;
 int fmove=2;
  
  f =new flower(r, numPetals, 100, 200, petalColor, fmove);
  f1=new flower(r,numPetals,500,300,petalColor*3,fmove*2);
  f2=new flower(r,numPetals*2,700,700,petalColor*5,fmove*3);
}

void draw(){
if(f.overlaps(f1)==true){
background(random(20));
}

for(int i=0;i<6;i=i+1)
f.display();
f.fmove();


f1.display();
f1.fmove();

f2.display();
f2.fmove();

  }

  
