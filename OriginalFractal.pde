public void setup()
{
	background(255);
	size(500, 500);
}
public void draw()
{
	fractal(100, 400, 300);
}
public void fractal(int x, int y, int size)
{
	if(size <= 600)
	{
		fill(0);
		triangle(x, y, x + size/2, y - size, x + size, y);
	}
	else
	{
		fractal(x - size/4, y - size/2, size/2);
	}

}
