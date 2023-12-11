class Bullet extends Spaceship
{
  Bullet(Spaceship theShip) {
  myCenterX = theShip.getCenterX();
  myCenterY = theShip.getCenterY();
  myXspeed = theShip.getXspeed();
  myYspeed = theShip.getYspeed();
  myPointDirection = theShip.getPointDir();
  accelerate(1.4);
  }
  
  public void show() {
   ellipse((float)myCenterX, (float)myCenterY, 10, 10); 
  }
  
  public void move() {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }
  
  public boolean offScreen() {
    if(myCenterX > 1000 || myCenterX < 0) 
      return true;
    if(myCenterY > 1000 || myCenterY < 0)
      return true;
    return false;
  }
}
