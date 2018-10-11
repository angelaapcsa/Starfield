Particle[] particles;
void setup()
{
	size(300,300);
  particles = new Particle[300];
  for (int i = 0; i <particles.length; i++)
  {
    particles[i] = new NormalParticle();
    particles[0]= new OddballParticle();
    particles[1]= new JumboParticle();
  }
  
}
void draw()
{
	background(0);
   
   for (int i = 0; i <particles.length; i++)
   {
    particles[i].show();
    particles[i].move();
   }
}
class NormalParticle implements Particle
{
	double dX,dY,dTheta,dSpeed;
  NormalParticle()
  {
    dX = (int)(Math.random()*299)+1;
    dY = (int)(Math.random()*299)+1;
    dTheta = (int)(Math.random()*360)+1;
    dSpeed = 2;
  }
  public void move()
  {
    dX = dX + Math.cos(dTheta)*dSpeed;
    dY = dY + Math.sin(dTheta)*dSpeed;
  }
  public void show()
  {
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse((float)dX, (float)dY, 10,10);
  }
}
interface Particle
{
	public void show();
  public void move();
  
}
class OddballParticle implements Particle  
{
	float bX,bY;
  int bColor;
  OddballParticle()
   {
     bX = (int)(Math.random()*299)+1;
     bY = (int)(Math.random()*299)+1;
     bColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   }
   void move()
   {
     bX = bX + (int)(Math.random()*7)-3;
     bY = bY + (int)(Math.random()*7)-3;
   }
   void show()
   {
     fill(bColor);
     ellipse(bX,bY,10,10);
   }
}
class JumboParticle extends NormalParticle
{
	public void show()
  {
    fill(256);
    ellipse((float)dX, (float)dY, 30,30);
  }
  
}
