class Sun extends Celesties{
  public ArrayList<Planet> planets;
  PImage image;
  PShape shape;
  
  public Sun(float x, float y, float radius){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    //this.img = newImage;
    planets = new ArrayList<Planet>();
  }
  
  void imageTexture(PImage newimage) {
    image = newimage;
  }
  
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    sphere(radius);
    //shape.setTexture(image);
    translate(-centerX, -centerY, 0);
  }
}
