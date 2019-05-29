ArrayList<Celesties> notPlanets = new ArrayList<Celesties>();
ArrayList<Planet> planets = new ArrayList<Planet>();
ArrayList<Planet> testing = new ArrayList<Planet>();
boolean move = false;
boolean reset = false;
int time;
int totaltime = 0;
int passedtime = 0;
int difference = 0;
PImage sunImage;

public float resize(float radius) {
    return radius/(4321.7/7);
  }

void setup(){
  size(1440, 900, P3D);
  background(51);
  time = millis();
  
  sunImage = loadImage("sun.jpg");
  Sun sun = new Sun(720, 450, 70,sunImage);
  notPlanets.add(sun);
  
  PImage mercuryImage = loadImage("mercury.jpeg");
  Planet mercury = new Planet(800, 450, resize(1516), 800-720, 1 * 2,mercuryImage);
  planets.add(mercury);

  PImage venusImage = loadImage("venus.jpg");
  Planet venus = new Planet(832, 450, resize(3760.4), 832-720, 0.4 * 2,venusImage);
  planets.add(venus);
  
  PImage earthImage = loadImage("earth.png");
  Planet earth = new Planet(875, 450, resize(3958.8), 875-720, 0.25 * 2,earthImage);
  planets.add(earth);
  Moon earthMoon = new Moon(875, 460, resize(1079.4), 460-450, 2, 4);
  earth.addMoon(earthMoon);
  
  PImage marsImage = loadImage("mars.jpeg");
  Planet mars = new Planet(920, 450, resize(2106.1), 920-720, 0.138 * 2,marsImage);
  planets.add(mars);
  Moon phobos = new Moon(920,  460, 0.6, 460-450, 3, 10);
  Moon deimos = new Moon(920, 440, 0.5, 450-440, 3, 9);
  mars.addMoon(phobos);
  mars.addMoon(deimos);
 
  PImage jupiterImage = loadImage("jupiter.jpeg");
  Planet jupiter = new Planet(1000, 450, 28, 1000-720, 0.021 * 2,jupiterImage);
  planets.add(jupiter);
  Moon io = new Moon(1000, 410, 1.7, 450-410, 4, 8.9);
  Moon europa = new Moon(1000, 490, 1.2, 490-450, 4, 8.8);
  Moon ganymede = new Moon(960, 450, 2.4, 1000-960, 4, 8.5);
  Moon callisto = new Moon(1040, 450, 2.2, 1040-1000, 4, 8);
  jupiter.addMoon(io);
  jupiter.addMoon(europa);
  jupiter.addMoon(ganymede);
  jupiter.addMoon(callisto);
  
  PImage saturnImage = loadImage("saturn.jpg");
  Planet saturn = new Planet(1080, 450, 20, 1080-720, 0.0175,saturnImage);
  planets.add(saturn);
  Moon titan = new Moon(1080, 480, 2.4, 30, 5, 8);
  Moon dione = new Moon(1080, 420, .5, 30, 5, 8.8);
  saturn.addMoon(titan);
  saturn.addMoon(dione);

  PImage uranusImage = loadImage("uranus.jpg");
  Planet uranus = new Planet(1150, 450, 11, 1150-720, 0.01,uranusImage);
  planets.add(uranus);
  Moon miranda = new Moon(1150, 435, .4, 450-435, 6, 8.85);
  Moon ariel = new Moon(1150, 470, .5, 20, 6, 8.8);
  uranus.addMoon(miranda);
  uranus.addMoon(ariel);
  
  PImage neptuneImage = loadImage("neptune.jpg");
  Planet neptune = new Planet(1200, 450, 10, 1200-720, 0.005,neptuneImage);
  planets.add(neptune);
  Moon triton = new Moon(1200, 435, 1.3, 15, 7, 8.6);
  neptune.addMoon(triton);

  PImage plutoImage = loadImage("pluto.jpg");
  Planet pluto = new Planet(1260, 450, 1, 1260-720, 0.0035,plutoImage);
  planets.add(pluto);
  
  notPlanets.get(0).display();
  for(int i = 0; i < planets.size(); i++){
    Planet p = planets.get(i);
    p.display();
    if (p.hasMoon()) {
      p.displayEach();
    }
  }
  time = millis();
  
  //Planet x = new Planet(875, 450, resize(3958.8), 875-720, (24/180) * PI);
  //testing.add(x);
  //Planet y = new Planet(1000, 450, 28, 1000-720);
  //testing.add(y);
}

void draw(){
<<<<<<< HEAD
  if(reset){
    background(51);
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      c.display();
    }
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      p.reset();
      p.display();
      if (p.hasMoon()) {
        p.displayEach();
      }
    }
    move = false;
    reset = false;
  }
=======
  pushMatrix();
  //translate(notPlanets.get(0).getCenterX(),notPlanets.get(0).getCenterY());
  //circle(740,450,70);
>>>>>>> 0dc2e0e36bca192467a8c4f21a2345b4838ab745
  if (!move) {
    passedtime = totaltime;
    difference = millis();
  }
  if(move){
    background(51);
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      c.display();
    }
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      p.display();
      p.orbitSunSpeed();
      if(p.hasMoon()){
        p.displayEach();
      }
    }
    
    //for(int i = 0; i < testing.size(); i++){
    //  Planet p = testing.get(i);
    //  p.display();
    //  p.orbitSun();
    //}
    
    //int passedtime = millis() - time;
    totaltime = millis() - difference + passedtime;
    fill(255);
    //totaltime = totaltime/1000;
    text("Seconds passed: " + totaltime/1000/*totaltime*1/365*/,100,200);
  }
  //stoppedtime = millis();
<<<<<<< HEAD
  
  
=======
  popMatrix();
>>>>>>> 0dc2e0e36bca192467a8c4f21a2345b4838ab745
}

void keyPressed(){
  if(key == ' '){
    move = !move;
  }
  if(key == 'r'){
    reset = !reset;
  }
}
    
