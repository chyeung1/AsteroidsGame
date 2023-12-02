//your variable declarations here
Floater[] john = new Floater[12];
Spaceship max = new Spaceship();
Star[] tim = new Star[250];
boolean wPressed, aPressed, dPressed, sPressed = false;
ArrayList<Asteroid> greg = new ArrayList<Asteroid>();
public void setup() 
{
  //your code here
  frameRate(240);
  size(1000,1000);
  for(int i = 0; i < john.length; i++) 
  john[i] = new Floater();
  
  for(int i = 0; i < tim.length; i++)
  tim[i] = new Star();
  
  for(int i = 0; i < 5; i++) {
    greg.add(new Asteroid());
  }
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
  for(int i = 0; i < greg.size(); i++) {
    greg.get(i).show();
    greg.get(i).move();
   if(greg.get(i).isTouching()) {
    greg.remove(i);
   }
  }
  
  if(wPressed == true)
   max.accelerate(0.0314); 
  if(aPressed == true)
   max.turn( -1); 
  if(dPressed == true)
   max.turn(1); 
  if(sPressed == true)
   max.accelerate(-0.0314); 
}

public void keyPressed() {
  if(key == 'e') { max.hyperspace();}
  if(key == 'w') { wPressed = true;}
  if(key == 'a') { aPressed = true;}
  if(key == 'd') { dPressed = true;}
  if(key == 's') { sPressed = true;}
}

public void keyReleased() {
  if(key == 'w') { wPressed = false;}
  if(key == 'a') { aPressed = false;}
  if(key == 'd') { dPressed = false;}
  if(key == 's') { sPressed = false;}
}
