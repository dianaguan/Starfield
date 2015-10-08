//your code here
NormalParticle [] one;

void setup()
{
	//your code here

	size(800,500);
	one = new NormalParticle[200];
	for (int i = 0; i<one.length; i++)
	{
		one[i] = new NormalParticle();
	}


	
}
void draw()
{
	//your code here
	background(255);
	for (int i = 0; i<one.length; i++)
	{
		one[i].move();
		one[i].show();
	}
	
	

}
class NormalParticle
{
	//your code here
	double dX, dY, ang1, dSpeed;
	int dColor;
	NormalParticle()
	{
		dX = 400;
		dY = 250;
		ang1 = Math.PI*2*Math.random();
		dSpeed = (int)(Math.random()*15);
		dColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
	}
	public void move()
	{
		dX = Math.cos(ang1)*dSpeed+dX;
		dY = Math.sin(ang1)*dSpeed+dY;
	}
	public void show()
	{
		fill(dColor);
		noStroke();
		ellipse((int)dX,(int)dY,20,20);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	// //your code here
	public void show()
	{
		fill(120,36,155);
		ellipse(50, 200, 10,10);
	}
	public void move()
	{
		
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

