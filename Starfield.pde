//your code here
NormalParticle [] one;
void setup()
{
	//your code here
	size(800,500);
	
}
void draw()
{
	//your code here
	one = new NormalParticle[100];
	for (int i = 0; i<one.length; i++)
	{
		one[i] = new NormalParticle();
		one[i].move();
		one[i].show();
	}
	

}
class NormalParticle
{
	//your code here
	double X, Y, Angle, Speed;
	int Color;
	NormalParticle(x,y)
	{
		X = x;
		Y = y;
		Angle = 30;
		Speed = 40;
		Color = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
	}
	void move()
	{
		X = Math.cos(Angle)*Speed+X;
		Y = Math.sin(Angle)*Speed+Y;
	}
	void show()
	{
		fill(Color);
		ellipse((int)X,(int)Y,20,20);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

