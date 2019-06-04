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
  String info;
  boolean clicked = true;
  float scale = 1;
  boolean camera;
  
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
  
  //void move(float x, float y){
    //
  //}
  
  void setRotate(float r){
    this.rotateF = r;
  }
  
  void changeMass(float m){
    this.mass = m;
  }
  
  void changeSize(float s){
    this.radius = s;
  }
  
  void setScale(float s){
    this.scale = s;
  }
  
  //void zoomIn(float z) {
  //  translate(width>>1, height>>1, zoom, zoom);
  
  abstract boolean infoText();
  //abstract void rotating();
    
  abstract void display();
}
