class Moon extends Celesties {
  float originalX;
  float originalY;
  private float orbit;
  private float angle;
  private Planet planet;
  
  public Moon(float x, float y, float radius, float neworbit, int planetNum) {
    this.centerX = x;
    originalX = x;
    originalY = y;
    this.centerY = y;
    this.radius = radius;
    this.orbit = neworbit;
    this.planet = planets.get(planetNum);
    this.angle = atan2(planet.getCenterX()-centerX, planet.getCenterY()-centerY);
    this.speed = 2;
  }
  
  public Moon(float x, float y, float radius, float neworbit, int planetNum, float speed) {
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    this.orbit = neworbit;
    this.planet = planets.get(planetNum);
    this.angle = atan2(planet.getCenterX()-centerX, planet.getCenterY()-centerY);
    this.speed = speed;
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
  
  void reset(){
    this.centerX = originalX;
    this.centerY = originalY;
    this.angle = atan2(planet.getCenterX()-centerX, planet.getCenterY()-centerY);
  }
    
  
  void orbitPlanet(){
    this.centerX = (planet.getCenterX() + orbit * cos(2 * angle - PI/2));
    this.centerY = (planet.getCenterY() + orbit * sin(2 * angle - PI/2));
    angle += PI/120;
  }
  
  void orbitPlanetSpeed(){
    this.centerX = (planet.getCenterX() + orbit * cos(speed * angle - PI/2));
    this.centerY = (planet.getCenterY() + orbit * sin(speed * angle - PI/2));
    angle += PI/120;
  }
  
}
