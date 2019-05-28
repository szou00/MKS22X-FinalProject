class Sun extends Celesties{
  public ArrayList<Planet> planets;
  
  public Sun(float x, float y, float radius, PImage newImage){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    this.img = newImage;
    planets = new ArrayList<Planet>();
  }
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    image(this.img, 0,0,radius,radius);
    translate(-centerX, -centerY, 0);
  }
}
