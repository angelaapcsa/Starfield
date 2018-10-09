Particle[] particles;
void setup()
{
	size(300,300);
  particles = new Particle[300];
  for (int i = 0; i <particles.length; i++)
  {
    particles[i] = new NormalParticle();
  }
  particles[0]= new OddballParticle();
  particles[1]= new JumboParticle();
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double dX,dY,dTheta,dSpeed;
  NormalParticle()
  {
    dX = 150;
    dY = 150;
    dTheta = 2.03;
    dSpeed = 8.25;
  }
  void move()
  {
  }
  void show()
  {
  }
}
interface Particle
{
	public void show();
  public void move();
  
}
class OddballParticle implements Particle
{
	//your code here
}
class JumboParticle extends NormalParticle
{
	public void show()
  {
  }
  
}
