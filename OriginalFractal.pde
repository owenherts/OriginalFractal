public void setup()
{
  size(400,400);
  ellipseMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(200, 200, 400);
}
public void myFractal(int x, int y, int siz)
{
 stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 ellipse(x, y, siz, siz); 
 if(siz > 25)
 {
  myFractal(x, y+(siz/4), siz/2); 
  myFractal(x, y-(siz/4), siz/2); 
  myFractal(x+(siz/4), y, siz/2); 
  myFractal(x-(siz/4), y, siz/2); 
 }
}
