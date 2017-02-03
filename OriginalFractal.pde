float r = 0;
float s = 0;
public void setup()
{
	background(0);
	size(1000, 1000);
	frameRate(50);
}
public void draw()
{
	background(0);
	translate(width/2, height/2);
	r += 0.05;
	rotate(r); //to rotate around a pt, use translate(500, 500) and rotate
	s += 0.05;
	fractal((float)(-200 * Math.sin(s)), (float)(140 * Math.sin(s)), (float)(400 * Math.sin(s)));
	fill(255, 0, 0);
	strokeWeight(15);
	//point(0, 0);

}
public void fractal(float x, float y, float siz)
{

	noFill();
	strokeWeight(0.5);
	stroke(255, 255, 255, 60);
	triangle(x, y, x + siz/2, y - siz, x + siz, y);
	if(siz > 24)
	{
	
		fractal(x - siz/2, y, siz/2);
		fractal(x, y - siz, siz/2);
		fractal(x - siz/4, y + siz/2, siz/2);
		fractal(x + (3*siz)/4, y + siz/2, siz/2);
		fractal(x + siz, y, siz/2);
		fractal(x + siz/2, y - siz, siz/2);
		
		/*
		fractal(x - siz/4, y, siz/4);
		fractal(x + siz/4, y - siz, siz/4);
		fractal(x - siz/8, y + siz/4, siz/4);
		fractal(x + (7*siz)/8, y + siz/4, siz/4);
		fractal(x + siz, y, siz/4);
		fractal(x + siz/2, y - siz, siz/4);
		*/
		/*
		fractal(x - siz/4, y - siz/2, siz/2);
		fractal(x + siz/4, y + siz/2, siz/2);
		fractal(x + (3*siz)/4, y - siz/2, siz/2);
		*/
	}
	//else
		//fractal(x - siz/4, y - siz/2, siz/2);

}
