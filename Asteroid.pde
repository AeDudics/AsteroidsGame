class Asteroid extends Floater{
  private int rot;
  private int peterX;
  private int milesY;
  public Asteroid(){
    corners = 20;
    xCorners = new int[]{-2,0,-4,-6,-10,-14,-12,-14,-14,0,-8,-4,0,14,16,14,14,12,10,10};
    yCorners = new int[]{-24,-24,-22,-20,-18,-14,-10,-6,-2,12,16,14,16,14,12,-2,-8,-14,-16,-18};
    myColor = color(92, 94, 93); 
    myCenterX=(int)(Math.random()*500);
    myCenterY=(int)(Math.random()*500);
    myPointDirection = (int)(Math.random()*5); 
    rot = (int)(Math.random()*7)-3;
    peterX = (int)(Math.random()*7)-3;
    milesY = (int)(Math.random()*7)-3;
  }
  public void move(){
    myPointDirection += rot;
    myCenterX += peterX;
    myCenterY += milesY;
    if(myCenterX > 500){     
      myCenterX = 0;    
    }  
    else if (myCenterX < 0){     
      myCenterX = 500;    
    }    
    if(myCenterY > 500){    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0){     
      myCenterY = 500;   
    }  
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}  
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;}  
  public void setPointDirection(int degrees) {myPointDirection = degrees;} 
}
