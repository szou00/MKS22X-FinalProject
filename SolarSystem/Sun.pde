class Sun extends Celesties{
  public ArrayList<Planet> planets;
  //PImage image;
  PShape shape;
  
  public Sun(float x, float y, float radius){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius; 
  }
  
  public Sun(float x, float y, float radius, PImage newImage){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    rotateF = 0;
    
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
    //rotateZ(PI/8);
    //sphere(radius);
    //shape = createShape(sphereradius);
    //shape.setTexture(image);
    translate(-centerX, -centerY, 0);
  }
  
  //void rotating(){
  //  rotateZ(rotateF += PI/8);
  //}
}
