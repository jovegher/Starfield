Star[] centauri;
void setup()
{
  centauri = new Star[1000];
  size (500, 500);
  for (int i = 0; i < centauri.length; i++) {
    centauri[i] = new specialPlanet();
    for (int k = 50; k < centauri.length; k++) {
      centauri[k] = new Star();
    }
  }
}
void draw()
{
  fill(50, 50, 50, 10);
  rect(0, 0, 500, 500);
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
  Star()
  {
    myX = myY = 250;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    mySpeed = ((double)(Math.random()*7)-3)*Math.sin(3);
    myAngle = ((double)(Math.random()*7)-3)*Math.cos(3);
  }
  void show()
  {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 2, 2);
  }
  void move()
  {
    myX = myX + (float)(Math.random()*mySpeed);
    myY = myY + (float)(Math.random()*myAngle);
    if (keyPressed == true && key == 'r') {
      background(0);
      myX = 250;
      myY = 250;
    }
  }
}
class specialPlanet extends Star {
  specialPlanet() {
    myX = (float)(Math.random()*50)+200;
    myY = (float)(Math.random()*50)+200;
    myColor = color((int)(Math.random()*70+170), (int)(Math.random()*90+150), (int)(Math.random()*60+180));
    mySpeed = ((double)(Math.random()*5)-2)*Math.sin(4);
    myAngle = ((double)(Math.random()*5)-2)*Math.cos(4);
  }
}
