class Spaceship extends Floater {
  public Spaceship() {
    myCenterX = 0;
    myCenterY = 0;
    corners = 3;
    xCorners = new int[]{0,0,20};
    yCorners = new int[]{10,-10,0};
    myColor = 225;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
}
