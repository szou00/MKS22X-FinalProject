class Sun extends Celesties{
  public ArrayList<Planet> planets;
  
  public Sun(float x, float y, float radius){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    planets = new ArrayList<Planet>();
  }
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    sphere(radius);
    translate(-centerX, -centerY, 0);
  }
}
