class Moon extends Celesties {
  private float orbit;
  private Planet planet;
  
  public Moon(float x, float y, float radius, float neworbit) {
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    this.orbit = neworbit;
    //planet = newplanet;
  }
  
  void display(){
    fill(0,255,0);
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    sphere(radius);
    translate(-centerX, -centerY, 0);
  }
  
}