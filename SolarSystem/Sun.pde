class Sun extends Celesties{
  public ArrayList<Planet> planets; //list of planets
  PShape shape;
  
  /**A constructor for the Sun
  */
  public Sun(float x, float y, float radius){
    this.centerX = x;
    this.centerY = y;
    this.radius = radius; 
  }
  
  /**A constructor for the Sun
  */
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
  
  /**A method for setting the texture of the Sun
  */
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
  
  /**A method that checks if the mouse is on the Sun and displays the info if true
  *@return boolean
  */
  boolean infoText(){
    
    float disX = centerX - mouseX;
    float disY = centerY - mouseY;//-105;
    if (sqrt(sq(disX) + sq(disY)) < radius ) {

      String s = "Sun\nDiameter: 864,340 miles\nAge: 4.5 billion years";
      fill(255);
      text(s, 100, 500, 200, 120);
      return true;
    } return false;
  }
  
  /**A method for zooming in
  */
  void zoom() {
     scale(2.5, 2.5, 2.5);
  }
}
