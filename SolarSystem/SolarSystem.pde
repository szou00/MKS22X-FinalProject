ArrayList<Celesties> notPlanets = new ArrayList<Celesties>();
ArrayList<Planet> planets = new ArrayList<Planet>();
boolean move = false;

void setup(){
  size(1440, 900, P3D);
  background(51);
  
  Sun sun = new Sun(720, 450, 70);
  sun.display();
  notPlanets.add(sun);
  
  Planet mercury = new Planet(800, 450, 2, 800-720);
  planets.add(mercury);

  Planet venus = new Planet(832, 450, 5, 832-720);
  planets.add(venus);
  
  Planet earth = new Planet(875, 450, 5.6, 875-720);
  Moon earthMoon = new Moon(875,460,1.5,875-720);
  earth.addMoon(earthMoon);
  planets.add(earth);
  
  Planet mars = new Planet(920, 450, 3, 920-720);
  Moon phobos = new Moon(920,460,0.6,920-720);
  Moon deimos = new Moon(920, 440, 0.5, 920-720);
  mars.addMoon(phobos);
  mars.addMoon(deimos);
  planets.add(mars);
  
  Planet jupiter = new Planet(1000, 450, 28, 1000-720);
  Moon lo = new Moon(1000,410,1.7,1000-720);
  Moon europa = new Moon(1000,490,1.2,1000-720);
  Moon ganymede = new Moon(960,450, 2.4, 1000-720);
  Moon callisto = new Moon(1040, 450, 2.2, 1000-720);
  jupiter.addMoon(lo);
  jupiter.addMoon(europa);
  jupiter.addMoon(ganymede);
  jupiter.addMoon(callisto);
  planets.add(jupiter);
  
  Planet saturn = new Planet(1080, 450, 20, 1080-720);
  Moon titan = new Moon(1080, 480, 2.4, 1080-720);
  Moon dione = new Moon(1080, 420, .5, 1080-720);
  saturn.addMoon(titan);
  saturn.addMoon(dione);
  planets.add(saturn);
  
  Planet uranus = new Planet(1150, 450, 11, 1150-720);
  Moon miranda = new Moon(1150, 435, .4, 1150-720);
  Moon ariel = new Moon(1150, 470, .5, 1150-720);
  uranus.addMoon(miranda);
  uranus.addMoon(ariel);
  planets.add(uranus);
  
  Planet neptune = new Planet(1200, 450, 10, 1200-720);
  Moon triton = new Moon(1200, 435, 1.3, 1200-700);
  neptune.addMoon(triton);
  planets.add(neptune);
  
  Planet pluto = new Planet(1260, 450, 1, 1260-720);
  planets.add(pluto);
  
  for(int i = 0; i < planets.size(); i++){
    Planet p = planets.get(i);
    p.display();
    if (p.hasMoon()) {
      p.displayEach();
    }
  }
  
  
}

void draw(){
  if(move){
    background(51);
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      c.display();
    }
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      p.display();
      p.orbitSun();
      if(p.hasMoon()){
        p.displayEach();
      }
    }
  }
  
}

void mouseClicked(){
  move = !move;
}
