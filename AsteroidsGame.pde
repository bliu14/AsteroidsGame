Star[] stars = new Star[200];
Spaceship ship = new Spaceship();
int i = 0;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i< stars.length; i++) {
    stars[i] = new Star();
    stars[i].show();
  }
  for (int j = 0; j < 10; j++) {
    asteroids.add(new Asteroid());
    asteroids.get(j).move();
    asteroids.get(j).show();
  }
}
void draw() {
  background(0);
  for (int i = 0; i< stars.length; i++) {
    stars[i].show();
  }
  for (int j = 0; j < asteroids.size(); j++) {
    asteroids.get(j).move();
    asteroids.get(j).show();
    if (dist((float)asteroids.get(j).getX(), (float)asteroids.get(j).getY(), (float)ship.getX(), (float)ship.getY()) <= 10) {
      asteroids.remove(j);
      j--;
    }
  }
  for (int k = 0; k < bullets.size(); k++) {
    if(bullets.get(k).getVar() == false) {
      bullets.get(k).accelerate(10);
      bullets.get(k).setVar(true);
    }
    bullets.get(k).move();
    bullets.get(k).show();

    
  }
  for(int b = 0; b < bullets.size(); b++) {
    for(int c = 0; c < asteroids.size(); c++) {
      if (dist((float)bullets.get(b).getX(), (float)bullets.get(b).getY(), (float)asteroids.get(c).getX(), (float)asteroids.get(c).getY()) <= 10) {
      asteroids.remove(c);
      c--;
      }
    }
  }
  ship.show();
  ship.move();
}
public void keyPressed() {
  if (key == 'w'|| key == 'W') {
    ship.accelerate(1);
  }
  if (key == 'a'|| key == 'A') {
    ship.turn(-5);
  }
  if (key == 's'|| key == 'S') {
    ship.accelerate(-1);
  }
  if (key == 'd'|| key == 'D') {
    ship.turn(5);
  }
  if (key == ' ') {
    ship.myXspeed = 0;
    ship.myYspeed = 0;
    ship.myCenterX = random(500);
    ship.myCenterY = random(500);
    ship.turn(random(360));
  }
  if (key == 'f') {
    bullets.add(new Bullet(ship));
    
  }
}
