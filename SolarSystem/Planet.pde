class Planet extends Celesties{
  float orbit;
  
  public Planet(float x, float y, float radius, float orbit){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    this.orbit = orbit;
    
  }
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    sphere(radius);
    translate(-centerX, -centerY, 0);
  }
}
