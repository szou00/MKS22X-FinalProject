class Planet extends Celesties{
  //original position
  float originalX;
  float originalY;
  float orbit; //orbit radius
  float angle; //orbit angle
  ArrayList<Moon> moons = new ArrayList<Moon>(); //list of moons
  PShape shape;
  
  /**A constructor for a Planet
  */
  public Planet(float x, float y, float radius, float orbit){
    this.centerX = x;
    originalX = x;
    originalY = y;
    this.centerY = y;
    this.radius = radius;
    this.orbit = orbit;
    this.angle = atan2(720-centerX, 450-centerY);
    this.speed = 1;
  }
  
  /**A constructor for a Planet
  */
  public Planet(float x, float y, float radius, float orbit, float speed){
    this.centerX = x;
    this.centerY = y;
    originalX = x;
    originalY = y;
    this.radius = radius;
    this.orbit = orbit;
    this.angle = atan2(720-centerX, 450-centerY);
    this.speed = speed;
  }
  
   /**A constructor for a Planet
   */
   public Planet(float x, float y, float radius, float orbit, float speed, PImage newImage){
    this.centerX = x;
    this.centerY = y;
    originalX = x;
    originalY = y;
    this.radius = radius;
    this.orbit = orbit;
    this.angle = atan2(720-centerX, 450-centerY);
    this.speed = speed;
    
    noStroke();
    noFill();
    shape = createShape(SPHERE, radius);
    shape.setTexture(newImage);
  }
  
  /**A method for adding moons
  */
  public void addMoon(Moon newMoon) {
    moons.add(newMoon);
  }
  
  /**A method that checks if the planet has moons
  *@return boolean
  */
  public boolean hasMoon() {
    if (moons.size() > 0) {
      return true;
    }
    return false;
  }
  
  /**A method that resets the moon to its original position
  */
  void reset(){
    this.centerX = originalX;
    this.centerY = originalY;
    this.angle = atan2(720-centerX, 450-centerY);
  }
  
  /**A method that calls on each of the planet's moons and tells them to display and move
  */
  public void displayEach() {
    for (int i = 0; i < moons.size(); i++) {
      if(reset){
        moons.get(i).reset();
      }
      moons.get(i).display();
      if(move){
        moons.get(i).orbitPlanetSpeed();
      }
    }
  }
  
  /**A method that tell's each of the planet's moons to call infoText()
  */
  public void infoEach() {
    for (int i = 0; i < moons.size(); i++) {
      moons.get(i).infoText();
    }
  }
  
  /**A method that scales up each of the planet's moons
  */
  public void scaleEachUp() {
    for (int i = 0; i < moons.size(); i++) {
      moons.get(i).setScale(moons.get(i).scale + 1);
    }
  }
  
  /**A method that scales down each of the planet's moons
  */
  public void scaleEachDown() {
    for (int i = 0; i < moons.size(); i++) {
      Moon m = moons.get(i);
      if(m.scale > 1){
        m.setScale(moons.get(i).scale - 1);
      }
    }
  }
  
  /**A method that sets the scale for each of the planet's moons
  */
  public void scaleEach(float s) {
    for (int i = 0; i < moons.size(); i++) {
      moons.get(i).setScale(s);
    }
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
  
  /**A method for orbiting the Sun using the default speed
  */
  void orbitSun(){
    this.centerX = (orbit * cos(angle + PI/2));
    this.centerY = (orbit * sin(angle + PI/2));
    angle += PI/120;
  }
  
  /**A method for orbiting the Sun using the given speed
  */
  void orbitSunSpeed(){
    this.centerX = (orbit * cos((speed * (angle + PI/2))));
    this.centerY = (orbit * sin((speed * (angle + PI/2))));
    angle += PI/120;
  }
  
  /**A method for updating information
  */
  void setInfo(String s){
    this.info = s;
  }
  
  /**A method that checks if the mouse is on the Planet and displays the info if true
  *@return boolean
  */
  boolean infoText(){
    if((mouseX >= this.centerX - this.radius) && (mouseX <= this.centerX + this.radius)
      && (mouseY >= this.centerY - this.radius) && (mouseY <= this.centerY + this.radius)){                
    
      String s = this.info;
      fill(255);
      text(s, 100, 500, 200, 120);
      return true;
    }
    return false;
  }
  
  /**A method that highlights the orbit of the planet**/
  void showOrbit() {
    stroke(255,255,0);
    noFill();
    circle(width/2,height/2,orbit*2);
    noStroke();
  }
  
  /**A method for zooming in
  */
  void zoom() {
    pushMatrix();
    scale(2.5, 2.5, 2.5);
    popMatrix();
  }
  
  /**A method for displaying the information**/
  void displayInfo() {
    String s = "Planet: " + this.info;
    for (int i = 0; i<moons.size(); i++) {
      s += "\n\n" + moons.get(i).getInfo();
    }
    fill(255);
    text(s, 200, 340, 200, 500);
  }
  
}
