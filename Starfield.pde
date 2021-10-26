Star[] centauri;
void setup()
{
  centauri = new Star[200];
  size (500, 500);
  for (int i = 0; i < centauri.length; i++) {
    centauri[i] = new Star(250,250);
  }
}
void draw()
{
  fill(50,50,50,10);
  rect(0,0,500,500);
  background(0);
  for (int i = 0; i < centauri.length; i++) {
    centauri[i].move();
    centauri[i].show();
  }
}
class Star
{
  float myX;
  float myY;
  double mySpeed, myAngle;
  int myColor;
  Star(int x, int y)
  {
    myX = myY = 250;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    mySpeed = (int)(Math.random()*11)-1;
    myAngle = ((int)(Math.random()*3)-1)*Math.PI;
  }
   void show()
  {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 3,3);
  }
  void move()
  {
    myX = myX + (int)(Math.random()*mySpeed);
    myY = myY + (int)(Math.random()*mySpeed);
  }
}

class OddballParticle //inherits from Particle
{
	//your code here
}


