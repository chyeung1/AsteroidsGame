class Star //note that this class does NOT extend Floater
{
  //your code here
  protected int xPos, yPos;
  protected color rgb;
  
  public Star() {
    xPos = (int)(Math.random() * width);
    yPos = (int)(Math.random() * height);
    rgb = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  }
  
  public void show() {
    fill(rgb);
    noStroke();
    ellipse(xPos, yPos, 3, 3);
  }
}
