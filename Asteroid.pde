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
    myCenterX = Math.random() * 1000;
    myCenterY = Math.random() * 1000;
    myColor = color(255);
    myPointDirection = Math.random() * 360;
    rotSpeed = Math.random() * 2 - 1;
    myXspeed = Math.random() * 1 - 1;
    myYspeed = Math.random() * 1 - 1;
  } 
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public boolean isTouching(Spaceship ship) {
    return (dist((float)ship.getCenterX(), (float)ship.getCenterY(), (float)myCenterX, (float)myCenterY) < 6 * size);
  }
}
