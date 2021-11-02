Star[] centauri;
void setup()
{
  frameRate(144);
  centauri = new Star[3500];
  size (1000, 1000);
  for (int i = 0; i < centauri.length; i++) {
    centauri[i] = new specialPlanet();
    for (int k = 350; k < centauri.length; k++) {
      centauri[k] = new Star();
    }
  }
}
void draw()
{
  fill(50, 50, 50, 10);
  rect(0, 0, 1000, 1000);
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
  int xSize, ySize;
  Star()
  {
    myX = myY = 500;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    mySpeed = ((double)(Math.random()*15)-7)*Math.sin(3);
    myAngle = ((double)(Math.random()*15)-7)*Math.cos(3);
    xSize = 2;
    ySize = 2;
  } 
  void show()
  {
    int rand = (int)(Math.random()*8);
    if (rand == 0) {
      fill(myColor);
    } else if (rand == 1) {
      fill(32, 8, 203);
    } else if (rand == 2) {
      fill(52, 8, 197);
    } else if (rand == 3) {
      fill(65, 8, 191);
    } else if (rand == 4) {
      fill(75, 10, 185);
    } else if (rand == 5) {
      fill(83, 13, 179);
    } else if (rand == 6) {
      fill(89, 16, 173);
    } else {
      fill(94, 19, 168);
    } 
    noStroke();
    ellipse(myX, myY, xSize, ySize);
  }
  void move()
  {
    myX = myX + (float)(Math.random()*mySpeed);
    myY = myY + (float)(Math.random()*myAngle);
    if (mousePressed == true && mouseButton == LEFT) {
      mySpeed = ((double)(Math.random()*21)-10)*Math.sin(7);
    }
    if (mousePressed == true && mouseButton == RIGHT) {
      mySpeed = ((double)(Math.random()*21)-10)*Math.cos(11);
    }
    if (keyPressed == true && key == 'c') {
      mySpeed = ((double)(Math.random()*21)-10)*Math.sin(11) + 3.14/2;
      myAngle = ((double)(Math.random()*21)-10)*Math.sin(11) + 3.14/2;
    }
    if (keyPressed == true && key == 'f') {
      mySpeed = ((double)(Math.random()*21)-10)*Math.tan(5);
      myAngle = ((double)(Math.random()*21)-10)*Math.tan(5);
    }
    if (keyPressed == true && key == 'r') {
      background(0);
      myX = 500;
      myY = 500;
      mySpeed = ((double)(Math.random()*15)-7)*Math.sin(3);
    }
  }
}
  class specialPlanet extends Star 
  {
    specialPlanet() 
    {
      myX = (float)(Math.random()*50)+450;
      myY = (float)(Math.random()*50)+200;
      myColor = color((int)(Math.random()*70+170), (int)(Math.random()*90+150), (int)(Math.random()*60+180));
      mySpeed = ((double)(Math.random()*5)-2)*Math.sin(4);
      myAngle = ((double)(Math.random()*5)-2)*Math.cos(4);
      xSize = 5;
      ySize = 5;
    }
  }
