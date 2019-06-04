abstract class Celesties{
  float radius;
  float centerX, centerY;
  float rotateF;
  float speed;
  PImage image;
  String info;
  float scale = 1;
  
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
  
  void storeImage(PImage newimage) {
    image = newimage;
  }
  
  void setRotate(float r){
    this.rotateF = r;
  }
  
  void changeSize(float s){
    this.radius = s;
  }
  
  void setScale(float s){
    this.scale = s;
  }
  
  abstract boolean infoText();
    
  abstract void display();
}
