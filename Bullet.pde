
class Bullet extends Floater {
  private boolean accel;
  public Bullet(Spaceship s) {
    myCenterX = s.getX();
    myCenterY = s.getY();
    corners = 2;
    xCorners = new int[]{0, 10};
    yCorners = new int[]{0, 0};
    myColor = color(0, 225, 0);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = s.getPtD();
    accel = false;
  }
  public void show() {
    fill(myColor);
    stroke(myColor);
    //draw the polygon
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public void setVar(boolean a) {
    accel = a;
  }
  public boolean getVar() {
    return accel;
  }
}
