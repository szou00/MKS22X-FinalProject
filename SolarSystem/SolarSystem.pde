abstract class Celesties{
  float radius;
  float centerX, centerY;
  PImage img;
  float rotateF;
  float speed;
  float mass;
  float gravity;
  
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
  
  void move(float x, float y){
    //
  }
  
  void rotate(float r){
    this.rotateF = r;
  }
  
  void changeMass(float m){
    this.mass = m;
  }
  
  void changeSize(float s){
    this.radius = s;
  }
}

void setup(){
  size(1440, 900, P3D);
  Sun sun = new Sun(720, 450, 54.02125);
  sun.display();
}
    
