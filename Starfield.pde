//your code here
Particle [] one;
Particle [] two;

void setup()
{
	//your code here
	size(800,500);
	one = new Particle[200];
	two = new Particle[200];
	for (int i = 0; i<one.length; i++)
	{
		if(i==0){
			one[i] = new OddballParticle();
		}
		if(i==1){
			one[i] = new JumboParticle();
		}
		if(i>1){
			one[i] = new NormalParticle(400,250);
		}
	}
	for (int j = 0; j< two.length; j++){
		two[j] = new NormalParticle(300,100);
	}
}
void draw()
{
	//your code here
	background(255);
	frameRate(10);
	for (int i = 0; i<one.length; i++)
	{
		one[i].move();
		one[i].show();
	}
	for (int j = 0; j<two.length; j++)
	{
		two[j].move();
		two[j].show();
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}	


class NormalParticle implements Particle
{
	//your code here
	double dX, dY, ang1, dSpeed;
	int dColor;
	NormalParticle(int x,int y)
	{
		dX = x;
		dY = y;
		ang1 = Math.PI*2*Math.random();
		dSpeed = (float)((Math.random()*15)+1);
		dColor = color((float)(Math.random()*256),(float)(Math.random()*256), (float)(Math.random()*256));
	}
	public void move()
	{
		dX = Math.cos(ang1)*dSpeed+dX;
		dY = Math.sin(ang1)*dSpeed+dY;
		ang1+=100;
	}
	public void show()
	{
		fill(dColor);
		noStroke();
		ellipse((int)dX,(int)dY,20,20);
	}
	public void back()
	{
		if(dX>800||dX<2)
		{
			dX = 400;
		}
		if(dY>500||dY<2)
		{
			dY = 250; 
		}
		
	}
}

class OddballParticle implements Particle 
{
  	double dX, dY, ang1, dSpeed;
	int dColor;
	OddballParticle()
	{
		dX = 400;
		dY = 250;
		ang1 = Math.PI*2*Math.random()+2;
		dSpeed = (float)(Math.random()*4);
		dColor = color((float)(Math.random()*256),(float)(Math.random()*256), (float)(Math.random()*256));
	}
	public void move()
	{
		dX = Math.cos(ang1)*dSpeed+dX;
		dY = Math.sin(ang1)*dSpeed+dY;
	}
	public void show()
	{
		fill(255,255,0);
		noStroke();
		ellipse((int)dX,(int)dY,100,100);
	}
}
class JumboParticle extends OddballParticle//uses inheritance
{
	//your code here
	double dX, dY, ang1, dSpeed;
	int dColor;
	JumboParticle()
	{
		dX = 400;
		dY = 250;
		ang1 = Math.PI*2*Math.random()+2;
		dSpeed = (float)(Math.random()*2);
		//dColor = color((float)(Math.random()*256),(float)(Math.random()*256), (float)(Math.random()*256));
	}
	public void move()
	{
		dY = Math.sin(ang1)*dSpeed+dY;
	}
	public void show()
	{
		fill(255,204,0);
		noStroke();
		ellipse((int)dX,(int)dY,50,50);
	}
}