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
  
  public Planet(float x, float y, float radius, float orbit, float speed, PImage newImage, boolean camera){
    this.centerX = x;
    this.centerY = y;
    originalX = x;
    originalY = y;
    this.radius = radius;
    this.orbit = orbit;
    this.angle = atan2(720-centerX, 450-centerY);
    this.speed = speed;
    this.camera = camera;
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
  
  public void infoEach() {
    for (int i = 0; i < moons.size(); i++) {
      moons.get(i).infoText();
    }
  }
  
  public void scaleEachUp() {
    for (int i = 0; i < moons.size(); i++) {
      moons.get(i).setScale(moons.get(i).scale + 1);
    }
  }
  
  public void scaleEachDown() {
    for (int i = 0; i < moons.size(); i++) {
      Moon m = moons.get(i);
      if(m.scale > 1){
        m.setScale(moons.get(i).scale - 1);
      }
    }
  }
  
  public void scaleEach(float s) {
    for (int i = 0; i < moons.size(); i++) {
      moons.get(i).setScale(s);
    }
  }
  
  void display(){
    noStroke();
    lights();
    pushMatrix();
    translate(centerX, centerY, 0);
    rotate(rotateF += PI/120);
    scale(this.scale);
    
    shape(shape);
    translate(-centerX, -centerY, 0);
    popMatrix();
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
  
  void setInfo(String s){
    this.info = s;
  }
  
  void infoText(){
    if(mX >= centerX - radius && mX <= centerX + radius
      && mY >= centerY - radius && mY <= centerY + radius){
      
    fill(255);
    text(info, 100, 700, 200, 100);
    }
  }
  
  void zoom() {
    pushMatrix();
    scale(2.5, 2.5, 2.5);
    popMatrix();
  }
}
