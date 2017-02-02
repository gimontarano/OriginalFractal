public void setup()
{
	size(800, 800);
	background(0);
}
public void draw()
{
 	rectan(400, 400, 400);
}
public void mouseDragged()//optional
{

}
public void rectan(int x, int y, int len) 
{
	rectMode(CENTER);
	if(len <= 20)
	{
		fill(255);
		rect(x, y, len, len);
	}
	else
	{
		fill(255);
		rect(x, y, len, len);
		//bottom right
		fill(255);
		rect(x+len/2, y+len/2, len/2, len/2);
		//bottom left
		fill(255);
		rect(x-len/2, y+len/2, len/2, len/2);
		//top right
		fill(255);
		rect(x+len/2, y-len/2, len/2, len/2);
		//top left
		fill(255);
		rect(x-len/2, y-len/2, len/2, len/2);
		//recursion
		rectan(x+len/2, y+len/2, len/2);
		rectan(x-len/2, y+len/2, len/2);
		rectan(x+len/2, y-len/2, len/2);
		rectan(x-len/2, y-len/2, len/2);

	}
}