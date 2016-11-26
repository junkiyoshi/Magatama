Jewel[] magas;
float centerX, centerY;

float _rateNoise;

void setup()
{
  size(1024, 1024);
  smooth();
  frameRate(30);  
 
  centerX = width / 2;
  centerY = height / 2;
  magas = new Jewel[2];
  
  color c1 = color(0);
  color c2 = color(255);
 
  magas[0] = new Jewel(width / 2, height / 2, height / 2, 0, c1, c2); 
  magas[1] = new Jewel(width / 2, height / 2, height / 2, 180, c2, c1);
 
  background(c2);
}

void draw()
{  
  // _rateNoise += 0.05;
  
  for(int i = 0; i < magas.length; i++)
  {
    magas[i].drawMe();
  }
  
  //saveFrame("screen-#####.png");  
}