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
<<<<<<< HEAD
  
  void orbitSun(){
    float t = millis()/1000.0f;
    this.centerX = (int)(720+ orbit * cos(t));
    this.centerY = (int)(450+ orbit * sin(t));
  }
}
=======
}
>>>>>>> e6c703a48b6dc2e9e65a0dfee220dbbf25bda9c7
