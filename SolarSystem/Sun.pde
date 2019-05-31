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
    pushMatrix();
    translate(centerX, centerY, 0);
    rotate(rotateF += PI/120);
    scale(this.scale);
    shape(shape);
    //popMatrix();
    //rotateZ(PI/8);
    //sphere(radius);
    //shape = createShape(sphereradius);
    //shape.setTexture(image);
    translate(-centerX, -centerY, 0);
    popMatrix();
  }
  
  void infoText(){
    //pushMatrix();
    if(mX >= centerX - radius && mX <= centerX + radius
      && mY >= centerY - radius && mY <= centerY + radius){
      
    String s = "Sun\nDiameter: 864,340 miles\nAge: 4.5 billion years";
    fill(255);
    text(s, 100, 700, 200, 100);
    }
  }
  
  //void mouseClicked(){
  //  clicked = true;
  //}
  //void rotating(){
  //  rotateZ(rotateF += PI/8);
  //}
}
