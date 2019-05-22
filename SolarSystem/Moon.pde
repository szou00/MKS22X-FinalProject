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
    translate(centerX, centerY, 0);
    sphere(radius);
    translate(-centerX, -centerY, 0);
  }
  
  void orbitPlanet(){
    /*this.centerX = (planet.getCenterX() + orbit * cos(angle));
    this.centerY = (planet.getCenterY() + orbit * sin(angle));
    angle += PI/120;
    */
    
    pushMatrix(); 
    rotate(-angle*4);
    translate(36, 0);
    fill(50, 255, 200);
    ellipse(0, 0, 12, 12);
    popMatrix();
    angle+=0.1;
  }
  
}
