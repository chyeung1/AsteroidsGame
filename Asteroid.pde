class Asteroid extends Floater {
  private double rotSpeed;
  private int size;
  public Asteroid() {
    size = (int)(Math.random() * 5) + 5;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -5 * size;
    yCorners[0] = -5 * size;
    xCorners[1] = 0;
    yCorners[1] = -5 * size;
    xCorners[2] = 5 * size;
    yCorners[2] = 0;
    xCorners[3] = 5 * size;
    yCorners[3] = 5 * size;
    xCorners[4] = 0;
    yCorners[4] = 5 * size;
    xCorners[5] = -5 * size;
    yCorners[5] = 0;
    myCenterX = 500;
    myCenterY = 500;
    myColor = color(255);
    myPointDirection = Math.random() * 360;
    rotSpeed = Math.random() * 10 - 5;
    myXspeed = Math.random() * 10 - 5;
    myYspeed = Math.random() * 10 - 5;
  } 
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}
