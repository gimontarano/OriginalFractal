public void setup()
{
	size(800, 800);
	background(255);
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
	noStroke();
	rectMode(CENTER);
	if(len <= 1)
	{
		fill(0);
		rect(x, y, len, len);
	}
	else
	{
		fill(0);
		rect(x, y, len, len);
		//bottom right
		fill(0);
		rect(x+len/2, y+len/2, len/2, len/2);
		//bottom left
		fill(0);
		rect(x-len/2, y+len/2, len/2, len/2);
		//top right
		fill(0);
		rect(x+len/2, y-len/2, len/2, len/2);
		//top left
		fill(0);
		rect(x-len/2, y-len/2, len/2, len/2);
		//recursion
		rectan(x+len/2, y+len/2, len/2);
		rectan(x-len/2, y+len/2, len/2);
		rectan(x+len/2, y-len/2, len/2);
		rectan(x-len/2, y-len/2, len/2);

	}
}