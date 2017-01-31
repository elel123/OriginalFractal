public void setup()
{
	background(0);
	size(1000, 1000);
}
public void draw()
{
	fractal(400, 600, 200);
}
public void fractal(int x, int y, int siz)
{
	fill(0);
	stroke(255);
	triangle(x, y, x + siz/2, y - siz, x + siz, y);
	if(siz > 10)
	{
		fractal(x - siz/2, y, siz/2);
		fractal(x, y - siz, siz/2);
		fractal(x - siz/4, y + siz/2, siz/2);
		fractal(x + (3*siz)/4, y + siz/2, siz/2);
		fractal(x + siz, y, siz/2);
		fractal(x + siz/2, y - siz, siz/2);

		/*
		fractal(x - siz/4, y - siz/2, siz/2);
		fractal(x + siz/4, y + siz/2, siz/2);
		fractal(x + (3*siz)/4, y - siz/2, siz/2);
		*/
	}
	//else
		//fractal(x - siz/4, y - siz/2, siz/2);

}
