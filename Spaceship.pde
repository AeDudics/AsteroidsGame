class Spaceship extends Floater{
  public Spaceship() { 
    corners = 4;
    xCorners = new int[]{-8, 16, -8, 2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color(255,255,255);
    myXspeed = myYspeed = 0;
    myCenterX = myCenterY = 255;
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}  
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;}  
  public void setPointDirection(int degrees) {myPointDirection = degrees;} 
  public int getPointDirection() {return (int)myPointDirection;}
  public void setXspeed(double x){myXspeed = x;}
  public double getXspeed(){return myXspeed;}
  public void setYspeed(double y){myYspeed = y;}
  public double getYspeed(){return myYspeed;}
  public void setCenterX (int x){myCenterX = x;}
  public double getCenterX(){return myCenterX;}
  public void setCenterY (int y){myCenterY = y;}
  public double getCenterY(){return myCenterY;}
}
