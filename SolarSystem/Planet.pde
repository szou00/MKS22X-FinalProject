class Planet extends Celesties{
  float orbit;
  ArrayList<Moon> moons = new ArrayList<Moon>();
  private boolean hMoon = false;
  
  public Planet(float x, float y, float radius, float orbit){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    this.orbit = orbit;
  }
  
  //public void createMoon(float x, float y, float radius, float orbit) {
  //  Moon newMoon = new Moon(x,y,radius,orbit);
  //  moons.add(newMoon);
  //}
  
  public void addMoon(Moon newMoon) {
    moons.add(newMoon);
  }
  
  public boolean hasMoon() {
    if (moons.size() > 0) {
      return true;
    }
    return false;
  }
  
  public void displayEach() {
    for (int i = 0; i < moons.size(); i++) {
      display();
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
    float t = millis()/1000.0f;
    this.centerX = (int)(720+ orbit * cos(t));
    this.centerY = (int)(450+ orbit * sin(t));
  }
}
