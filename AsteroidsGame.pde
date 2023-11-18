//your variable declarations here
Floater[] john = new Floater[12];
Spaceship max = new Spaceship();
Star[] tim = new Star[250];
public void setup() 
{
  //your code here
  frameRate(240);
  size(1000,1000);
  for(int i = 0; i < john.length; i++) 
  john[i] = new Floater();
  
  for(int i = 0; i < tim.length; i++)
  tim[i] = new Star();
}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i < tim.length; i++) {
    tim[i].show();
  }
  for(int i = 0; i < john.length; i++) {
    john[i].show();
  }
  max.move();
  max.show();
}

public void keyPressed() {
  if(key == 'e') { max.hyperspace(); }
  if(key == 'w') { max.accelerate(0.5); }
  if(key == 'a') { max.turn( -5); }
  if(key == 'd') { max.turn(5); }
  if(key == 's') { max.accelerate(-0.5); }
}
