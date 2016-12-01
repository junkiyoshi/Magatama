Jewel[] magas;
float centerX, centerY;

float _rateNoise;

color c1, c2;

void setup()
{
  size(1980, 1080);
  smooth();
  frameRate(30);  
 
  centerX = width / 2;
  centerY = height / 2;
  magas = new Jewel[0];
  
  c2 = color(255);
 
  float size = 80;
  float angle = 45;
  float wmax = width / size;
  float hmax = height / size;
 
  for(int x = 0; x < wmax; x++)
  {
    for(int y = 0; y < hmax; y++)
    {
      c1 = color(random(128, 255), random(128, 255), random(128, 255));
      Jewel maga = new Jewel(x * size, y * size, size / 2, 180 * (x % 2), c1, c2);
      magas = (Jewel[])append(magas, maga);
    }
  }
  
  background(c2);
}

void draw()
{ 
  background(c2);
  _rateNoise += 0.05;
  
  for(int i = 0; i < magas.length; i++)
  {
    magas[i].drawMe();
  }
  
  //saveFrame("screen-#####.png");  
}