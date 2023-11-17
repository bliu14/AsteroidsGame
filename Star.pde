class Star {
  private float x,y;
  public Star() {
    x = random(500);
    y = random(500);
  }
  public void show() {
    fill(225);
    ellipse(x,y,5,5);
  }
}
