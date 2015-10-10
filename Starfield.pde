//your code here
NormalParticle [] one;

void setup()
{
	//your code here

	size(800,500);
	one = new NormalParticle[200];
	for (int i = 1; i<one.length-1; i++)
	{
		one[i] = new NormalParticle();
	}
	//one[0] = new OddballParticle(x, y);

	
}
void draw()
{
	//your code here
	background(255);
	for (int i = 1; i<one.length-1; i++)
	{
		one[i].move();
		one[i].show();
	}
	one[0].move();
	one[0].show();
	
	

}
class NormalParticle implements Particle
{
	//your code here
	double dX, dY, ang1, dSpeed;
	int dColor;
	NormalParticle()
	{
		dX = 400;
		dY = 250;
		ang1 = Math.PI*2*Math.random();
		dSpeed = (int)((Math.random()*15)+1);
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
class OddballParticle implements Particle 
{
  int myX, myY;
  OddballParticle(int x, int y) 
  {
    myX  = x;
    myY = y;
  }

  public void move() 
  {
    myX = myX +(int)(Math.random()*7)-3;
    myY = myY +(int)(Math.random()*7)-3;
  }

  public void show() 
  {
    fill(0);
    ellipse(myX,myY,10,10);
  }
}
class JumboParticle //uses inheritance
{
	//your code here
}

