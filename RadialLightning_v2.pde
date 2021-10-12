int startX = 300;
int startY = 0;
int endX = 100;
int endY = 0;

void setup()
{
  size(600, 600);
  background(0);
  strokeWeight(3);
}
void draw()
{
  int rad = 100;
  translate(width/2,height/2);
  
  for (int x = -rad; x <=rad; x++) {
    int sign = (int)(Math.random()*2) == 0 ?-1:1;
    int y = sign*(int)Math.pow((double)(rad*rad - x*x), 0.5);
    //System.out.println(sign+","+x+","+y);
    stroke(100);
    point(x, y);
    startX = x;
    startY = y;
    stroke(215, 215, 0, (int)(Math.random()*200));
    while (endY < 100)
    {
      endY = startY +(int)(Math.random()*10);
      endX = startX +(int)(Math.random()*10)-5;
      //line(0, 0, endX, endY);
      line(startX, startY, endX, endY);
      startY = endY;
      startX = endX;
    }
  }
}
void mousePressed()
{
  startX = 300;
  startY = 0;
  endX = 100;
  endY = 0;
}
