Particle[] particles;
void setup()
{
	size(600,600);
  particles = new Particle[500];
  for (int i = 0; i <particles.length; i++)
  {
    particles[i] = new NormalParticle();
  }
  particles[0]= new OddballParticle();
  particles[1]= new JumboParticle();
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
    dX = 300;
    dY = 300;
    dTheta = (Math.random()*360)+1;
    dSpeed = (Math.random()*10)+1;
  }
  public void move()
  {
    dX = dX + Math.cos(dTheta)*dSpeed;
    dY = dY + Math.sin(dTheta)*dSpeed;
  }
  public void show()
  {
    fill(255, 255, 102);
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
     bX = (int)(Math.random()*200)+1;
     bY = (int)(Math.random()*200)+1;
     bColor = color(255);
   }
   void move()
   {
     bX = bX + (int)(Math.random()*7)-3;
     bY = bY + (int)(Math.random()*7)-3;
   }
   void show()
   {
     fill(bColor);
     rect(bX,bY,20,20);
   }
}
class JumboParticle extends NormalParticle
{
	public void show()
  {
    fill(255);
    ellipse((float)dX, (float)dY, 30,30);
  }
  
}
