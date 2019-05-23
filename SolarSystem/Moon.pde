class Moon extends Celesties {
  private float orbit;
  private float angle;
  private Planet planet;
  
  public Moon(float x, float y, float radius, float neworbit, int planetNum) {
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    this.orbit = neworbit;
    this.planet = planets.get(planetNum);
    this.angle = atan2(planet.getCenterX()-centerX, planet.getCenterY()-centerY);
  }
  
  void display(){
    noStroke();
    lights();
    pushMatrix();
    translate(centerX, centerY, 0);
    sphere(radius);
    //translate(-centerX, -centerY, 0);
    popMatrix();
  }
  
  void orbitPlanet(){
    this.centerX = (planet.getCenterX() + orbit * cos(2 * angle - PI/2));
    this.centerY = (planet.getCenterY() + orbit * sin(2 * angle - PI/2));
    angle += PI/120;
  }
  
}