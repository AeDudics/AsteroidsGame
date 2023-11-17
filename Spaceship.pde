class Floater{
  protected double myCenterX, myCenterY, myXspeed, myYspeed, myPointDirection;
  protected int corners, myColor;
  protected int[] xCorners, yCorners;
  public Floater(){
    myCenterX = 0;
    myCenterY = 0;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void move(){
  }
  
  public void show(){
  }
}

class Spaceship extends Floater{
  public Spaceship() { 
    corners = 4;
    xCorners = new int[]{-8, 16, -8, 2};
    yCorners = new int[]{-8, 0, 8, 0};
  }
}
