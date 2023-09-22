void setup() {
  size(400,400);
  noStroke();
  ellipse (100,100, 100, 100);
  background(0);
  fill(245, 230, 66);

  

}
int lastX = 150 + (int)(Math.random()*100);
int lastY = 0;
int r = (int)(Math.random()*256);
int g = (int)(Math.random()*256);
int b = (int)(Math.random()*256);
int randomR = (int)(Math.random()*256);
int randomG = (int)(Math.random()*256);
int randomB = (int)(Math.random()*256);
void draw() {
  frameRate(30);
  if (Math.random() < 0.05) {
  background(0);
  fill(230,230,230);
  ellipse (100,30, 100, 100);
  ellipse (150,30, 100, 100);
   ellipse (200,30, 100, 100);
ellipse (250,30, 100, 100);
ellipse (300,30, 100, 100);
  }
}
void bolt(int x, int y, int r1, int g1, int b1) {
  for (int i = 0; i <= 100; i++) {
 ellipse(lastX+i*x/100,lastY+i*y/100,5,5);
  }
  lastX += x;
  lastY += y;
}
void mousePressed() {
  int i = 0;
  int Y = (int)(Math.random()*100)+50;
  while (lastY + Y <= 600) {
    bolt((int)(Math.random()*100)-50,Y,(randomR-r)*i/4, (randomG-g)*i/4, (randomB-b)*i/4);
    bolt((int)(Math.random()*100)-50,Y,(randomR-r)*i/4, (randomG-g)*i/4, (randomB-b)*i/4);
    i++;
  }
  lastX = 150 + (int)(Math.random()*100);
  lastY = 0;

}


