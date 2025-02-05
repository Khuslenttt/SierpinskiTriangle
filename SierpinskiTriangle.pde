public void setup()
{
  
  size(500,500);
  background(255);
}
public void draw()
{
//triangle(250, 100, 100, 400, 400, 400);
sierpinski(50,450,400);
}
public void mouseClicked()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  int x1 = x;
  int x2 = x + len;
  int x3 = x + len/2;
  int y1 = y;
  int y2 = y ;
  int y3 = y - len;
  if(len <= 20){
   triangle(x1,y1,x2,y2,x3,y3);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y - len/2, len/2);
  }
}
