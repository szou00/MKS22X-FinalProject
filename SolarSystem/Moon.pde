class Moon extends Celesties {
  private float orbit;
  private Planet planet;
  
  public Moon(float x, float y, float radius, float neworbit, int planetNum) {
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    this.orbit = neworbit;
    this.planet = planets.get(planetNum);
  }
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    sphere(radius);
    translate(-centerX, -centerY, 0);
  }
  
  void orbitPlanet(){
    float t = millis()/1000.0f;
    this.centerX = (int)(planet.getCenterX() + orbit * cos(t));
    this.centerY = (int)(planet.getCenterY() + orbit * sin(t));
  }
  
}
