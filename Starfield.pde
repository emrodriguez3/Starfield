Particle [] n = new Particle[500];
void setup()
{
  size(800,800);
  for(int i = 0; i < n.length;i++)
  n[i] = new Particle();
  n[0] = new OddballParticle();
  n[1] = new OddballParticle();
}
void draw()
{
  background(0,0,0);
  for(int i = 0; i < n.length; i++){
  n[i].show();
  n[i].move();
 } 
}
class Particle
{
  double x = 0;
  double y = 0;
  double speed = 0;
  double angle = 0;
  int pColor = 0; 
  Particle(){
    x = y = 400;
    angle = Math.random()*2*Math.PI;
    speed = Math.random()*10;
    pColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show(){
    fill(pColor); 
    ellipse((float)x,(float)y,15,15);
  }
  
  void move(){
    x = x + Math.cos(angle) * speed;
    y = y + Math.sin(angle) * speed; 
  }
} 


class OddballParticle extends Particle
{

    
  
  void show(){
   fill(pColor);
   ellipse((float)x,(float)y,50,80);
  }
  void move(){
    x = x + Math.cos(angle) / speed;
    y = y + Math.sin(angle) / speed;
  }
}





