ArrayList<Planet> planets = new ArrayList<Planet>();
boolean move = false;

void setup(){
  size(1440, 900, P3D);
  background(51);
  
  Sun sun = new Sun(720, 450, 70);
  sun.display();
  
  Planet mercury = new Planet(800, 450, 2, 800-720);
  planets.add(mercury);

  Planet venus = new Planet(832, 450, 5, 832-720);
  planets.add(venus);
  
  Planet earth = new Planet(875, 450, 5.6, 875-720);
  Moon newMoon = new Moon(875,460,1.5,875-720);
  earth.addMoon(newMoon);
  planets.add(earth);
  
  Planet mars = new Planet(920, 450, 3, 920-720);
  planets.add(mars);
  
  Planet jupiter = new Planet(1000, 450, 28, 1000-720);
  planets.add(jupiter);
  
  Planet saturn = new Planet(1080, 450, 20, 1080-720);
  planets.add(saturn);
  
  Planet uranus = new Planet(1150, 450, 11, 1150-720);
  planets.add(uranus);
  
  Planet neptune = new Planet(1200, 450, 10, 1200-720);
  planets.add(neptune);
  
  Planet pluto = new Planet(1260, 450, 1, 1260-720);
  sun.planets.add(pluto);
  
}

void draw(){
  for(int i = 0; i < planets.size(); i++){
    Planet p = planets.get(i);
    p.display();
    if (p.hasMoon()) {
      p.displayEach();
    }
  }
  
  //if(move){
  //  for(int i = 0; i < planets.size(); i++){
  //    Planet p = planets.get(i);
  //    p.orbitSun();
  //  }
  //}
  
}

void mouseClicked(){
  move = !move;
}
