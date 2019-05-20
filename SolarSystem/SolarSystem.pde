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
  
  Planet mercury = new Planet(800, 450, 2, 800-720);
  sun.planets.add(mercury);
  
  Planet venus = new Planet(832, 450, 5, 832-720);
  sun.planets.add(venus);
  
  Planet earth = new Planet(875, 450, 5.6, 875-720);
  sun.planets.add(earth);
  
  Planet mars = new Planet(920, 450, 3, 920-720);
  sun.planets.add(mars);
  
  Planet jupiter = new Planet(1000, 450, 28, 1000-720);
  sun.planets.add(jupiter);
  
  Planet saturn = new Planet(1080, 450, 20, 1080-720);
  sun.planets.add(saturn);
  
  Planet uranus = new Planet(1150, 450, 11, 1150-720);
  sun.planets.add(uranus);
  
  Planet neptune = new Planet(1200, 450, 10, 1200-720);
  sun.planets.add(neptune);
  
  Planet pluto = new Planet(1260, 450, 1, 1260-720);
  sun.planets.add(pluto);
  
  for(int i = 0; i < sun.planets.size(); i++){
    Planet p = sun.planets.get(i);
    p.display();
  }
  
}
    
