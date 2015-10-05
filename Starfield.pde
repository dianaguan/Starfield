//your code here
void setup()
{
	//your code here
	size(800,500);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
	double X, double Y, int Color, double Angle, double Speed;
	NormalParticle()
	{
		X = 400;
		Y = 250;
		Color = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
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

