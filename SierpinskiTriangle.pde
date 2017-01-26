public void setup()
{
	size(500,500);
		
}
public void draw()
{

sierpinski(0,500,500);
//sierpinskiY(0,500,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=20)
	{	
		//triangle(x+len*3/8, y-len/4,   x+len/2, y-len/2,   x+len*5/8,y-len/4);

		triangle(x,y,x+len,y,(x+x+len)/2,y-len);
		

	}
	else 
	{	
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);

			
	}
	
	
	
}
public void sierpinskiY(int x, int y, int len)
{
	if(len<=50)
	{
		triangle(x+len*3/8,y-len/4,x+len/2,y-len/2,x+len*5/8,y-len/4);
	}
	else  
	{
		sierpinskiY(x,y,len/2);
		sierpinskiY(x+len/2,y,len/2);
		sierpinskiY(x+len/4,y-len/2,len/2);
	}

}



/*else
	{		
		triangle(x,y,x+len/2,y,(x+x+len/2)/2,y-len/2);
		triangle(x+len/2,y,x+len,y,(x+x+len)/2,y-len/2);
		triangle(x+len/4,y-len/2,x+len/2+len/4,y-len/2,(x+x+len/2+len/4)/2,y-len);

	}*/