class Sun extends Celesties{
  public ArrayList<Planet> planets;
  //PImage image;
  PShape shape;
  
  public Sun(float x, float y, float radius, PImage newImage){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    
    noStroke();
    noFill();
    shape = createShape(SPHERE, radius);
    shape.setTexture(newImage);
    planets = new ArrayList<Planet>();
  }
  
  void imageTexture(PImage newimage) {
    image = newimage;
  }
  
  
  void display(){
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    shape(shape);
    //sphere(radius);
    //shape = createShape(sphereradius);
    //shape.setTexture(image);
    translate(-centerX, -centerY, 0);
  }
}
