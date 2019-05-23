class Planet extends Celesties{
  float orbit;
  float angle;
  ArrayList<Moon> moons = new ArrayList<Moon>();
  
  public Planet(float x, float y, float radius, float orbit){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    this.orbit = orbit;
    this.angle = atan2(720-centerX, 450-centerY);
  }
  
  public void addMoon(Moon newMoon) {
    moons.add(newMoon);
  }
  
  public float resize(float radius) {
    return radius/(6173.85714286);
  }
  
  public boolean hasMoon() {
    if (moons.size() > 0) {
      return true;
    }
    return false;
  }
  
  public void displayEach() {
    for (int i = 0; i < moons.size(); i++) {
      moons.get(i).display();
      if(move) {
        moons.get(i).orbitPlanet();
      }
    }
  }
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    sphere(radius);
    translate(-centerX, -centerY, 0);
  }
  
  void orbitSun(){
    this.centerX = (720 + orbit * cos(angle + PI/2));
    this.centerY = (450 + orbit * sin(angle +PI/2));
    angle += PI/120;
  }
}