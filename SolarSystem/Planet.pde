class Planet extends Celesties{
  float originalX;
  float originalY;
  float orbit;
  float angle;
  ArrayList<Moon> moons = new ArrayList<Moon>();
  PShape shape;
  
  public Planet(float x, float y, float radius, float orbit){
    this.centerX = x;
    originalX = x;
    originalY = y;
    this.centerY = y;
    this.radius = radius;
    this.orbit = orbit;
    this.angle = atan2(720-centerX, 450-centerY);
    this.speed = 1;
  }
  
  public Planet(float x, float y, float radius, float orbit, float speed){
    this.centerX = x;
    this.centerY = y;
    originalX = x;
    originalY = y;
    this.radius = radius;
    this.orbit = orbit;
    this.angle = atan2(720-centerX, 450-centerY);
    this.speed = speed;
  }
  
   public Planet(float x, float y, float radius, float orbit, float speed, PImage newImage){
    this.centerX = x;
    this.centerY = y;
    originalX = x;
    originalY = y;
    this.radius = radius;
    this.orbit = orbit;
    this.angle = atan2(720-centerX, 450-centerY);
    this.speed = speed;
    
    noStroke();
    noFill();
    shape = createShape(SPHERE, radius);
    shape.setTexture(newImage);
  }
  
  public void addMoon(Moon newMoon) {
    moons.add(newMoon);
  }
  
  public boolean hasMoon() {
    if (moons.size() > 0) {
      return true;
    }
    return false;
  }
  
  void reset(){
    this.centerX = originalX;
    this.centerY = originalY;
    this.angle = atan2(720-centerX, 450-centerY);
  }
  
  public void displayEach() {
    for (int i = 0; i < moons.size(); i++) {
      if(reset){
        moons.get(i).reset();
      }
      moons.get(i).display();
      if(move){
        moons.get(i).orbitPlanetSpeed();
      }
    }
  }
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    shape(shape);
    translate(-centerX, -centerY, 0);
  }
  
  void orbitSun(){
    this.centerX = (720 + orbit * cos(angle + PI/2));
    this.centerY = (450 + orbit * sin(angle + PI/2));
    angle += PI/120;
  }
  
  void orbitSunSpeed(){
    this.centerX = (720 + orbit * cos((speed * (angle + PI/2))));
    this.centerY = (450 + orbit * sin((speed * (angle + PI/2))));
    angle += PI/120;
  }
}
