//your code here
Particle [] one;
Particle [] two;
Particle [] three;

void setup()
{
	//your code here
	size(800,500);
	one = new Particle[800];
	two = new Particle[200];
	three = new Particle [200];
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
	// for (int j = 0; j< two.length; j++){
	// 	two[j] = new NormalParticle(300,100);
	// }
	// for (int k = 0; k< three.length; k++){
	// 	three[k] = new NormalParticle(600,400);
	// }
}
void draw()
{
	//your code here
	background(0);
	// frameRate(10);
	for (int i = 0; i<one.length; i++)
	{
		one[i].move();
		one[i].show();
		if(i>1)
		{
			((NormalParticle)one[i]).back();
		}


	}
	// if(mousePressed)
	// 	{
	// 		//one = new Particle[800];
	// 		for (int i= 0; i<one.length; i++){
	// 		((NormalParticle)one[i]).bback();
	// 		}
	// 	}
	
	// for (int j = 0; j<two.length; j++)
	// {
	// 	two[j].move();
	// 	two[j].show();
	// 	if(j>1)
	// {
	// 	((NormalParticle)one[j]).back();
	// }
	// }
	// for (int k = 0; k<three.length; k++)
	// {
	// 	three[k].move();
	// 	three[k].show();
	// 	if(k>1)
	// {
	// 	((NormalParticle)one[k]).back();
	// }
	// }
	
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
		dSpeed = (int)((Math.random()*3)+1);
		dColor = color((float)(Math.random()*256),(float)(Math.random()*256), (float)(Math.random()*256));
	}
	public void move()
	{
		// dX = Math.cos(ang1)*dSpeed+dX;
		// dY = Math.sin(ang1)*dSpeed+dY;
		// ang1+=100;
		dX+=(Math.cos(ang1)*dSpeed);
		dY+=(Math.sin(ang1)*dSpeed);
	
	}
	void bback()
	{
		dX-=(Math.cos(ang1)*dSpeed);
		dY-=(Math.sin(ang1)*dSpeed);
	}
	public void show()
	{
		fill(dColor);
		noStroke();
		ellipse((int)dX,(int)dY,5,5);
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