class Sun extends Celesties{
  public Sun(float x, float y, float radius){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    
  }
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    sphere(radius);
  }
}
