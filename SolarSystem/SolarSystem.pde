//object lists
ArrayList<Celesties> notPlanets = new ArrayList<Celesties>();
ArrayList<Planet> planets = new ArrayList<Planet>();
ArrayList<Planet> testing = new ArrayList<Planet>();
ArrayList<Button> buttons = new ArrayList<Button>();
boolean move = false;
boolean reset = true;
boolean scaleU = false;
boolean scaleD = false;
boolean Moons = false;
boolean Planets = false;
boolean Sun = false;
int zoomNum = -1;
boolean pushed = false;
boolean zoom = false;

//variables for moving
float scaleFactor,leftFactor, rightFactor, downFactor, upFactor;

//variables for time system
int time;
int totaltime = 0;
int passedtime = 0;
int difference = 0;

//extraneous variables
String keyStuff;
PImage sunImage,bg;
float mX, mY;

  /**A method for recalculating a radius to scale based on the scale factor
  */
  public float resize(float radius) {
    return radius/(4321.7/7);
  }
  
  void infoBox() {
    String s = "LEGEND\n\nSPACE = movement\nU = scale up; Y = scale down\n   Select the objects you want to scale:\n   N = Sun, M = moons, P = planets\nRIGHT arrow = switch between planets' orbits\nZ = system mimics orbit\nI = zoom in; O = zoom out\nA, D, W, S = shift screen left, right, up, and down\nHOVER the mouse over an object to see its info\n   (RESET each time)\nR = reset";
    fill(255);
    rect(70,10,320,185);
    fill(0);//set the text color to black
    text(s, 90, 25);  
  }

void setup(){
  size(1440,900, P3D);
  
  //setting up the sun, planets, moons, and information
  bg = loadImage("background.jpeg");
  //bg.resize(1440,700);
  //background(bg);
  background(51);
  time = millis();
  scaleFactor = 1;
  
  sunImage = loadImage("sun.jpg");
  Sun sun = new Sun(width/2, height/2, 70,sunImage);
  notPlanets.add(sun);
  sun.infoText();
  
  PImage mercuryImage = loadImage("mercury.jpeg");
  Planet mercury = new Planet(width/2+60, height/2, resize(1516), 800-720, 1 * 2 * 2,mercuryImage);
  planets.add(mercury);
  mercury.setInfo("Mercury\nDiameter: 3031 miles\nDistance from the Sun: 36 million miles\nPeriod of Orbit: 88 Earth days");

  PImage venusImage = loadImage("venus.jpg");
  Planet venus = new Planet(width/2+93, height/2, resize(3760.4), 832-720, 0.4 * 2 * 2,venusImage);
  planets.add(venus);
  venus.setInfo("Venus\nDiameter: 7521 miles\nDistance from the Sun: 67.2 million miles\nPeriod of Orbit: 225 Earth days");
  
  PImage earthImage = loadImage("earth.jpeg");
  PImage moonImage = loadImage("moon.jpeg");
  Planet earth = new Planet(width/2+155, height/2, resize(3958.8), width/2+155-width/2, 0.25 * 2 * 2, earthImage);
  earth.setInfo("Earth\nDiameter: 7926 miles\nDistance from the Sun: 93 million miles\nPeriod of Orbit: 365 Earth days");
  planets.add(earth);
  Moon earthMoon = new Moon(875, height/2+10, resize(1079.4), 10, 2, 4,moonImage);
  earthMoon.setInfo("Moon\nDiameter: 2159 miles\nDistance from Earth: 238,900 miles\nPeriod of Orbit: 27 Earth days");
  earth.addMoon(earthMoon);
  
  PImage marsImage = loadImage("mars.jpeg");
  Planet mars = new Planet(width/2+200, height/2, resize(2106.1), width/2+200-width/2, 0.138 * 2 * 2,marsImage);
  mars.setInfo("Mars\nDiameter: 4222 miles\nDistance from the Sun: 141.6 million miles\nPeriod of Orbit: 687 Earth days\nMoons: Phobos, Deimos");
  planets.add(mars);
  Moon phobos = new Moon(width/2+200,  height/2+10, 0.6, height/2+10-height/2, 3, 10,moonImage);
  phobos.setInfo("Phobos\nDiameter: 14 miles\nDistance from Mars: 5826 miles\nPeriod of Orbit: 8 hours"); 
  Moon deimos = new Moon(height/2+200, height/2-10, 0.5, height/2-440, 3, 9,moonImage);
  deimos.setInfo("Deimos\nDiameter: 7.7 miles\nDistance from Mars: 14,573 miles\nPeriod of Orbit: 30 hours");
  mars.addMoon(phobos);
  mars.addMoon(deimos);
 
  PImage jupiterImage = loadImage("jupiter.jpeg");
  Planet jupiter = new Planet(width/2+280, height/2, 28,280, 0.021 * 2 * 2,jupiterImage);
  jupiter.setInfo("Jupiter\nDiameter: 88,729 miles\nDistance from the Sun: 483.6 million miles\nPeriod of Orbit: 11.862 Earth years\nMoons (displayed): Io, Europa, Ganymede, Callisto");
  planets.add(jupiter);
  Moon io = new Moon(width/2+280, height/2-40, 1.7, 40, 4, 8.9,moonImage);
  io.setInfo("Io\nDiameter: 2,263.8 miles\nDistance from Jupiter: 262,000 miles\nPeriod of Orbit: 42 hours");
  Moon europa = new Moon(width/2+280, height/2+40, 1.2, 40, 4, 8.8,moonImage);
  europa.setInfo("Europa\nDiameter: 1,939.7 miles\nDistance from Jupiter: 414,000 miles\nPeriod of Orbit: 85 hours");
  Moon ganymede = new Moon(width/2+240, height/2, 2.4, 40, 4, 8.5,moonImage);
  ganymede.setInfo("Ganymede\nDiameter: 3,273.5 miles\nDistance from Jupiter: 665,000 miles\nPeriod of Orbit: 7.15 Earth days");
  Moon callisto = new Moon(width/2+320, height/2, 2.2, 40, 4, 8,moonImage);
  callisto.setInfo("Callisto\nDiameter: 2,995.4 miles\nDistance from Jupiter: 1,168,000 miles\nPeriod of Orbit: 16.7 Earth days");
  jupiter.addMoon(io);
  jupiter.addMoon(europa);
  jupiter.addMoon(ganymede);
  jupiter.addMoon(callisto);
  
  PImage saturnImage = loadImage("saturn.jpg");
  Planet saturn = new Planet(width/2+360, height/2, 20, 360, 0.0175 * 2,saturnImage);
  saturn.setInfo("Saturn\nDiameter: 74,600 miles\nDistance from the Sun: 886.7 million miles\nPeriod of Orbit: 29.5 Earth years\nMoons (displayed): Titan, Dione");
  planets.add(saturn);
  Moon titan = new Moon(width/2+360, height/2+30, 2.4, 30, 5, 8,moonImage);
  titan.setInfo("Titan\nDiameter: 3,199.7 miles\nDistance from Saturn: 759,220 miles\nPeriod of Orbit: 16 Earth days");
  Moon dione = new Moon(width/2+360, height/2-30, .5, 30, 5, 8.8,moonImage);
  dione.setInfo("Dione\nDiameter: 697.68 miles\nDistance from Saturn: 698 miles\nPeriod of Orbit: 2.7 Earth days");
  saturn.addMoon(titan);
  saturn.addMoon(dione);

  PImage uranusImage = loadImage("uranus.jpeg");
  Planet uranus = new Planet(width/2+430, height/2, 11, 430, 0.01 * 2,uranusImage);
  uranus.setInfo("Uranus\nDiameter: 32,600 miles\nDistance from the Sun: 1784 million miles\nPeriod of Orbit: 84 Earth years\nMoons (displayed): Miranda, Ariel");
  planets.add(uranus);
  Moon miranda = new Moon(width/2+430, height/2-15, .4, 15, 6, 8.85,moonImage);
  miranda.setInfo("Miranda\nDiameter: 293.04 miles\nDistance from Uranus: 80,685 miles\nPeriod of Orbit: 1.413 Earth days");
  Moon ariel = new Moon(width/2+430, height/2+20, .5, 20, 6, 8.8,moonImage);
  ariel.setInfo("Ariel\nDiameter: 720 miles\nDistance from Uranus: 118,638 miles\nPeriod of Orbit: 2.5 Earth days");
  uranus.addMoon(miranda);
  uranus.addMoon(ariel);
  
  PImage neptuneImage = loadImage("neptune.jpg");
  Planet neptune = new Planet(width/2+480, height/2, 10, 470, 0.005 * 2,neptuneImage);
  neptune.setInfo("Neptune\nDiameter: 30,200 miles\nDistance from the Sun: 2794.4 million miles\nPeriod of Orbit: 165 Earth years\nMoons (displayed): Triton");
  planets.add(neptune);
  Moon triton = new Moon(width/2+480, height/2-15, 1.3, 15, 7, 8.6,moonImage);
  triton.setInfo("Triton\nDiameter: 1,682 miles\nDistance from Neptune: 220,438 miles\nPeriod of Orbit: 5.877 Earth days");
  neptune.addMoon(triton);

  PImage plutoImage = loadImage("pluto.jpg");
  Planet pluto = new Planet(width/2+540, height/2, 1, 540, 0.0035 * 2,plutoImage);
  pluto.setInfo("Pluto\nDiameter: 1413 miles\nDistance from the Sun: 3674.5 million miles\nPeriod of Orbit: 248 Earth years");
  planets.add(pluto);
  
  Button info = new Button(200,500);
  buttons.add(info);
  
  Celesties c = notPlanets.get(0);

  for(int i = 0; i < notPlanets.size(); i++){
    //Celesties c = notPlanets.get(i);
    c.setScale(1);
    c.display();
    c.infoText();
  }
  for(int i = 0; i < planets.size(); i++){
    Planet p = planets.get(i);
    p.reset();
    p.setScale(1);
    p.display();
    p.infoText();
    if (p.hasMoon()) {
      p.displayEach();
      p.scaleEach(1);
      p.infoEach();
    }
  }
  //for (int i = 0; i < stars.size(); i++) {
  //  stars.get(i).display();
  //}
  time = millis();
  infoBox();
}

void draw(){
  infoBox();
  if(!zoom){ //if don't mimic the orbit...
    if(pushed){ //just stay in orbit of planet using camera
      if(zoomNum >= 0 && zoomNum <= 9){
        if(zoomNum == 9){
          Celesties c = notPlanets.get(0);
          camera(c.centerX-200, c.centerY-200, 0, c.centerX, c.centerY, 0, 1.0, 1.0, 1.0);
          //text("" + zoomNum, c.centerX-100, c.centerY-100);
        }else{
          Planet p = planets.get(zoomNum);
          camera(p.originalX-200, p.originalY-200, 0, p.originalX, p.originalY, 0, 1.0, 1.0, 1.0);
          //text("" + zoomNum, p.centerX-100, p.centerY-100);
        }
      }
      pushed = false; //stay in the orbit without moving
    }
  }
  if(zoom){ //if mimicing the orbit...
    //update the x and y values of the camera
    if(zoomNum >= 0 && zoomNum <= 9){
      if(zoomNum == 9){
        Celesties c = notPlanets.get(0);
        camera(c.centerX-100, c.centerY-100, 0, c.centerX, c.centerY, 0, 1.0, 1.0, 1.0);
      }else{
        Planet p = planets.get(zoomNum);
        camera(p.centerX-100, p.centerY-100, 0, p.centerX, p.centerY, 0, 1.0, 1.0, 1.0);
      }
    }
  }
  if(zoomNum > 9){ //go back to initial camera setting
    camera();
    zoomNum = -1;
  }
       
  if (reset) { //reset to initial screen
    scaleFactor = 1;
    scaleU = false;
    scaleD = false;
    Moons = false;
    Planets = false;
    Sun = false;

    leftFactor = rightFactor = upFactor = downFactor = 0;
    scale(scaleFactor);
    //background(bg);
    background(51);
    //reset all objects
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      c.setScale(1);
      c.display();
      //c.infoText();
    }
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      p.reset();
      p.setScale(1);
      p.display();
      if (p.hasMoon()) {
        p.displayEach();
        p.scaleEach(1);
      }
    }
    //for (int i = 0; i < stars.size(); i++) {
    //  stars.get(i).display();
    //}
    //infoBox();
    
    //reset time
    totaltime = 0;
    passedtime = 0;
    difference = 0;
    move = false;
    reset = false;
   }
  if (!move) { //if solar system is not in motion...
    passedtime = totaltime;
    difference = millis();
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      c.infoText();
    }
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      p.infoText();
      if(p.hasMoon()){
        p.infoEach();
      }
    }
  }
  if(move){ //if solar system is in motion...
    //toggles for movement of screen
    if (keyPressed) { //this makes it smoother!!
      if (key == 'i') scaleFactor+=0.1;
      if (key == 'o') {
        if (scaleFactor > 0) {
          scaleFactor -=0.1;
        }
      }
      if (key == 'a') leftFactor += 10;
      if (key == 'd') rightFactor += 10;
      if (key == 'w') upFactor += 10;
      if (key == 's') downFactor += 10;
    }
    
    //background(bg);
    background(51);
    text("mouseX mouseY " + mouseX + " " + mouseY,200,620);
    buttons.get(0).changeButton(mouseX, mouseY);
    
    
    translate(leftFactor,0);
    translate(-rightFactor,0);
    translate(0,upFactor);
    translate(0,-downFactor);
    //for (int i = 0; i < stars.size(); i++) {
    //  stars.get(i).display();
    //}
    totaltime = millis() - difference + passedtime;
    fill(255);
    text("Years passed: " + totaltime/1000/8/*totaltime*1/365*/,100-leftFactor+rightFactor,250-upFactor+downFactor);
    
    translate(width/2,height/2);
    scale(scaleFactor);
    translate(-width/2,-height/2);
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      c.display();
      //c.infoText();
    }
    translate(width/2,height/2);
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      p.display();
      //p.infoText();
      p.orbitSunSpeed();
      if(p.hasMoon()){
        p.displayEach();
        //p.infoEach();
      }
    }
    translate(-width/2,-height/2);
  }
  if(scaleU){ //to increase sizes of objects
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      if(Sun) c.setScale(c.scale + 1);
    }
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      if(Planets) p.setScale(p.scale + 1);
      if(Moons && p.hasMoon()){
        p.scaleEachUp();
      }
    }
    scaleU = false;
  }
  if(scaleD){ //to decrease sizes of planets
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      if(Sun && c.scale > 1){
        c.setScale(c.scale - 1);
      }
    }
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      if(Planets && p.scale > 1){
        p.setScale(p.scale - 1);
      }
      if(Moons && p.hasMoon()){
        p.scaleEachDown();
      }
    }
    scaleD = false;
  }
  //display info
  for(int i = 0; i < notPlanets.size(); i++){
    Celesties c = notPlanets.get(i);
    c.infoText();
  }
  for(int i = 0; i < planets.size(); i++){
    Planet p = planets.get(i);
    p.infoText();
    if(p.hasMoon()){
      p.infoEach();
    }
  }
  //text("" + zoomNum, 100-leftFactor+rightFactor, 200-upFactor+downFactor);
  //System.out.println("" + mouseX + " " + mouseY);
}


//checking for key input
void keyPressed(){
  keyStuff = "" + key;
  if(key == ' '){
    move = !move;
  }
  if(key == 'r'){
    reset = !reset;
  }
  if(key == 'u'){
    scaleU = !scaleU;
  }
  if(key == 'y'){
    scaleD = !scaleD;
  }
  if(key == 'z'){
    zoom = !zoom;
  }
  if(key == 'p'){
    Planets = !Planets;
  }
  if(key == 'm'){
    Moons = !Moons;
  }
  if(key == 'n'){
    Sun  = !Sun;
  }
  if(key == CODED){
    if(keyCode == RIGHT){
      zoomNum++;
      pushed = true;
    }
  }
}

//checking for mouse clicked
void mouseClicked(){
  mX = mouseX;
  mY = mouseY;
}
