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
  Sun sun = new Sun(720, 450, 70);
  sun.display();
  
  Planet mercury = new Planet(800, 450, 2);
  mercury.display();
  
  Planet venus = new Planet(832, 450, 5);
  venus.display();
  
  Planet earth = new Planet(875, 450, 5.6);
  earth.display();
  
  Planet mars = new Planet(920, 450, 3);
  mars.display();
  
  Planet jupiter = new Planet(1000, 450, 28);
  jupiter.display();
  
  Planet saturn = new Planet(1080, 450, 20);
  saturn.display();
  
  Planet uranus = new Planet(1150, 450, 11);
  uranus.display();
  
  Planet neptune = new Planet(1200, 450, 10);
  neptune.display();
  
  Planet pluto = new Planet(1260, 450, 1);
  pluto.display();
  
}
    
