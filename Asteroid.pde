class Asteroid extends Floater{
  private float rotSpeed;
  public Asteroid() {
    rotSpeed = random(-5,5);
    myCenterX = random(500);
    myCenterY = random(500);
    corners = 5;
    xCorners = new int[]{40,30,20,10,10};
    yCorners = new int[]{5,5,10,10,-10};
    myColor = color(225,0,0);
    myXspeed = random(-2,2);
    myYspeed = random(-2,2);
    myPointDirection = 0;
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
    myPointDirection+=rotSpeed;   
  }   
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
