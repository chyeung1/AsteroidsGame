class Spaceship extends Floater  
{   
  public Spaceship() {
   corners = 4;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = -20;
   yCorners[0] = -20;
   xCorners[1] = 40;
   yCorners[1] = 0;
   xCorners[2] = -20;
   yCorners[2] = 20;
   myColor = color(255);
   myCenterX = 500;
   myCenterY = 500;
   myXspeed = 0;
   myYspeed = 0;
   myPointDirection = 0;
  }
 
 public void setXspeed(double x){ myXspeed = x; }
 public void setYspeed(double y){ myYspeed = y; } 
 
 public void hyperspace() {
   myCenterX = Math.random() * width;
   myCenterY = Math.random() * height;
   myXspeed = 0;
   myYspeed = 0;
   myPointDirection = Math.random() * 360;
 }
}
