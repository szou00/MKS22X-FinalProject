class Sun extends Celesties{
  public ArrayList<Planet> planets;
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
    pushMatrix();
    translate(centerX, centerY, 0);
    rotate(rotateF += PI/120);
    scale(this.scale);
    shape(shape);
    translate(-centerX, -centerY, 0);
    popMatrix();
  }
  
  boolean infoText(){
    
    if(mouseX >= centerX - radius && mouseX <= centerX + radius
      && mouseY >= centerY - radius && mouseY <= centerY + radius){ 
    String s = "Sun\nDiameter: 864,340 miles\nAge: 4.5 billion years";
    fill(255);
    text(s, 100, 500, 200, 100);
    return true;
    } return false;
  }
  
  void zoom() {
     scale(2.5, 2.5, 2.5);
  }
}
