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
  
  void orbitSun(){
    float t = millis()/1000.0f;
    this.centerX = (int)(720+ orbit * cos(t));
    this.centerY = (int)(450+ orbit * sin(t));
  }
}
