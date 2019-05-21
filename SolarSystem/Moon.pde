class Moon extends Celesties {
  private float orbit;
  private int planet;
  
  public Moon(float x, float y, float radius, float neworbit, int planet) {
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    this.orbit = neworbit;
    this.planet = planet;
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
    this.centerX = (int)(720+ orbit * cos(t));
    this.centerY = (int)(450+ orbit * sin(t));
  }
  
}
