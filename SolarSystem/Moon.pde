class Moon extends Celesties {
  float originalX;
  float originalY;
  private float orbit;
  private float angle;
  private Planet planet;
  PShape shape;
  
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
    shape(shape);
    translate(-centerX, -centerY, 0);
    popMatrix();
  }
  
  void reset(){
    this.centerX = originalX;
    this.centerY = originalY;
    this.angle = atan2(planet.getCenterX()-centerX, planet.getCenterY()-centerY);
  }
    
  
  void orbitPlanet(){
    this.centerX = (planet.getCenterX() + orbit * cos(2 * angle - PI/2));
    this.centerY = (planet.getCenterY() + orbit * sin(2 * angle - PI/2));
    angle += PI/120;
  }
  
  void orbitPlanetSpeed(){
    this.centerX = (planet.getCenterX() + orbit * cos(speed * angle - PI/2));
    this.centerY = (planet.getCenterY() + orbit * sin(speed * angle - PI/2));
    angle += PI/120;
  }
  
  void infoText(){
    //
  }
  
  //void rotating(){
  //  gravity = 0;
  //}
  
}
