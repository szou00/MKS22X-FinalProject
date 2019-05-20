class Planet extends Celesties{
  float orbit;
  ArrayList<Moon> moons = new ArrayList<Moon>();
  
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
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    sphere(radius);
    translate(-centerX, -centerY, 0);
  }
}