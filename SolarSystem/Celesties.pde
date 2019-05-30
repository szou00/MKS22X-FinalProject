abstract class Celesties{
  float radius;
  float centerX, centerY;
  PImage img;
  float rotateF;
  float speed;
  float mass;
  float gravity;
  //PShape shape;
  PImage image;
  boolean clicked;
  
  float getRadius(){
    return radius;
  }
  
  float getCenterX(){
    return centerX;
  }
  
  float getCenterY(){
    return centerY;
  }
  
  float getRotate(){
    return rotateF;
  }
  
  float getSpeed(){
    return speed;
  }
  
  float getMass(){
    return mass;
  }
  
  float getGravity(){
    return gravity;
  }
  
  void storeImage(PImage newimage) {
    image = newimage;
  }
  
  void move(float x, float y){
    //
  }
  
  void setRotate(float r){
    this.rotateF = r;
  }
  
  void changeMass(float m){
    this.mass = m;
  }
  
  void changeSize(float s){
    this.radius = s;
  }
  
  abstract void infoText();
  //abstract void rotating();
    
  abstract void display();
}
