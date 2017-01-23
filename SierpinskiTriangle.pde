public void setup()
{
	size(500,500);
		sierpinski(100,100,100);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	triangle(x,y,x+len,y,(x+x+len)/2,y-len);
}