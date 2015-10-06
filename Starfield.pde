//your code here
NormalParticle one = new NormalParticle();
void setup()
{
	//your code here
	size(800,500);
}
void draw()
{
	//your code here
	one.move();
	one.show();

}
class NormalParticle
{
	//your code here
	double X, Y, Angle, Speed;
	int Color;
	NormalParticle()
	{
		X = 400;
		Y = 250;
		Angle = 30;
		Speed = 50;
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

