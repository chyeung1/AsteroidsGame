//your variable declarations here
Floater[] john = new Floater[12];
Spaceship max = new Spaceship();
Star[] tim = new Star[250];
ArrayList<Bullet> winston = new ArrayList<Bullet>();
ArrayList<Asteroid> greg = new ArrayList<Asteroid>();
boolean wPressed, aPressed, dPressed, sPressed = false;
public void setup() 
{
  //your code here
  frameRate(240);
  size(1000,1000);
  for(int i = 0; i < john.length; i++) 
  john[i] = new Floater();
  
  for(int i = 0; i < tim.length; i++)
  tim[i] = new Star();
  
  for(int i = 0; i < 25; i++) {
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
  
  if(greg.size() == 0) {
   for(int i = 0; i < 25; i++)
   greg.add(new Asteroid()); 
  }
  max.move();
  max.show();
  for(int i = 0; i < greg.size(); i++) {
    greg.get(i).show();
    greg.get(i).move();
   if(greg.get(i).isTouching(max)) {
    greg.remove(i);
    i--;
    }
   }
  
   for(int i = 0; i < winston.size(); i++) {
     winston.get(i).show();
     winston.get(i).move();
     //bullet touching asteroid
     for(int j = 0; j < greg.size(); j++) {
       if(greg.get(j).isTouching(winston.get(i))){
       greg.remove(j);
       winston.remove(i);
       break;
       }
     }
   }

  for(int i = 0; i < winston.size(); i++) {
   if(winston.get(i).offScreen())
   winston.remove(i);
  }
  if(wPressed == true)
   max.accelerate(0.004463); 
  if(aPressed == true)
   max.turn( -1); 
  if(dPressed == true)
   max.turn(1); 
  if(sPressed == true)
   max.accelerate(-0.0044463); 
}

public void mousePressed() {
 winston.add(new Bullet(max));
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
