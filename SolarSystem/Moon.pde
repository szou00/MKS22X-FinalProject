class Moon extends Celesties {
  //original positions
  float originalX; 
  float originalY;
  private float orbit; //orbit radius
  private float angle;  //orbit angle
  private Planet planet; //planet to orbit
  PShape shape;
  
  /**A constructor for a moon
  */
  public Moon(float x, float y, float radius, float neworbit, int planetNum) {
    this.centerX = x;
    originalX = x;
    originalY = y;
    this.centerY = y;
    this.radius = radius;
    this.orbit = neworbit;
    this.planet = planets.get(planetNum);
    this.angle = atan2(planet.getCenterX()-centerX, planet.getCenterY()-centerY);
    this.speed = 2;
  }
  
  /**A constructor for a moon
  */
  public Moon(float x, float y, float radius, float neworbit, int planetNum, float speed) {
    this.centerX = x;
    this.centerY = y;
    originalX = x;
    originalY = y;
    this.radius = radius;
    this.orbit = neworbit;
    this.planet = planets.get(planetNum);
    this.angle = atan2(planet.getCenterX()-centerX, planet.getCenterY()-centerY);
    this.speed = speed;
  }
  
  /**A constructor for a moon
  */
  public Moon(float x, float y, float radius, float neworbit, int planetNum, float speed, PImage newImage) {
    this.centerX = x;
    this.centerY = y;
    originalX = x;
    originalY = y;
    this.radius = radius;
    this.orbit = neworbit;
    this.planet = planets.get(planetNum);
    this.angle = atan2(planet.getCenterX()-centerX, planet.getCenterY()-centerY);
    this.speed = speed;
    
    noStroke();
    noFill();
    shape = createShape(SPHERE, radius);
    shape.setTexture(newImage);
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
  
  /**A method that resets the moon to its original position
  */
  void reset(){
    this.centerX = originalX;
    this.centerY = originalY;
    this.angle = atan2(planet.getCenterX()-centerX, planet.getCenterY()-centerY);
  }
    
  /**A method for orbiting the planet using the default speed
  */
  void orbitPlanet(){
    this.centerX = (planet.getCenterX() + orbit * cos(2 * angle - PI/2));
    this.centerY = (planet.getCenterY() + orbit * sin(2 * angle - PI/2));
    angle += PI/120;
  }
  
  /**A method for orbiting the planet using the given speed
  */
  void orbitPlanetSpeed(){
    this.centerX = (planet.getCenterX() + orbit * cos(speed * angle - PI/2));
    this.centerY = (planet.getCenterY() + orbit * sin(speed * angle - PI/2));
    angle += PI/120;
  }
  
  /**A method for updating information
  */
  void setInfo(String s){
    this.info = s;
  }
  
  /**A method that checks if the mouse is on the moon and displays the info if true
  *@return boolean
  */
  boolean infoText(){
    if(mouseX >= centerX - radius && mouseX <= centerX + radius
      && mouseY >= centerY - radius && mouseY <= centerY + radius){
    String s = this.info;
    fill(255);
    text(s, 100, 500, 200, 120);
    return true;
    } return false;
  }
  
}
