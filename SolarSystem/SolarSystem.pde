ArrayList<Celesties> notPlanets = new ArrayList<Celesties>();
ArrayList<Planet> planets = new ArrayList<Planet>();
ArrayList<Planet> testing = new ArrayList<Planet>();
ArrayList<Button> buttons = new ArrayList<Button>();
boolean move = false;
boolean reset = true;
boolean scaleU = false;
boolean scaleD = false;
int zoomNum = -1;
boolean pushed = false;
boolean zoom = false;
boolean clicked = false;
float scaleFactor,leftFactor, rightFactor, downFactor, upFactor;
int time;
int totaltime = 0;
int passedtime = 0;
int difference = 0;
String keyStuff;
PImage sunImage,bg;
float mX, mY;

public float resize(float radius) {
    return radius/(4321.7/7);
  }
  
  void infoBox() {
    fill(255,200,200);
    rect(70,450,200,100);
    fill(0);//set the text color to black
    text("Information", 90, 470);  
  }

void setup(){
  size(300, 500, P3D);
  
  bg = loadImage("background.jpeg");
  bg.resize(300,500);
  background(bg);
  time = millis();
  scaleFactor = 1;
  
  sunImage = loadImage("sun.jpg");
  Sun sun = new Sun(720, 450, 70,sunImage);
  sun.camera = true;
  notPlanets.add(sun);
  sun.infoText();
  
  PImage mercuryImage = loadImage("mercury.jpeg");
  Planet mercury = new Planet(800, 450, resize(1516), 800-720, 1 * 2 * 2,mercuryImage);
  planets.add(mercury);
  mercury.setInfo("Mercury\nDiameter: 3031 miles\nDistance from the Sun: 36 million miles\nPeriod of Orbit: 88 Earth days");

  PImage venusImage = loadImage("venus.jpg");
  Planet venus = new Planet(832, 450, resize(3760.4), 832-720, 0.4 * 2 * 2,venusImage);
  planets.add(venus);
  venus.setInfo("Venus\nDiameter: 7521 miles\nDistance from the Sun: 67.2 million miles\nPeriod of Orbit: 225 Earth days");
  
  PImage earthImage = loadImage("earth.jpeg");
  PImage moonImage = loadImage("moon.jpeg");
  Planet earth = new Planet(875, 450, resize(3958.8), 875-720, 0.25 * 2 * 2, earthImage);
  earth.setInfo("Earth\nDiameter: 7926 miles\nDistance from the Sun: 93 million miles\nPeriod of Orbit: 365 Earth days");
  //earth.camera = true;
  planets.add(earth);
  Moon earthMoon = new Moon(875, 460, resize(1079.4), 460-450, 2, 4,moonImage);
  earthMoon.setInfo("Moon\nDiameter: 2159 miles\nDistance from Earth: 238,900 miles\nPeriod of Orbit: 27 Earth days");
  earth.addMoon(earthMoon);
  
  PImage marsImage = loadImage("mars.jpeg");
  Planet mars = new Planet(920, 450, resize(2106.1), 920-720, 0.138 * 2 * 2,marsImage);
  mars.setInfo("Mars\nDiameter: 4222 miles\nDistance from the Sun: 141.6 million miles\nPeriod of Orbit: 687 Earth days");
  planets.add(mars);
  Moon phobos = new Moon(920,  460, 0.6, 460-450, 3, 10,moonImage);
  phobos.setInfo("Phobos\nDiameter: 14 miles\nDistance from Mars: 5826 miles\nPeriod of Orbit: 8 hours"); 
  Moon deimos = new Moon(920, 440, 0.5, 450-440, 3, 9,moonImage);
  deimos.setInfo("Deimos\nDiameter: 7.7 miles\nDistance from Mars: 14,573 miles\nPeriod of Orbit: 30 hours");
  mars.addMoon(phobos);
  mars.addMoon(deimos);
 
  PImage jupiterImage = loadImage("jupiter.jpeg");
  Planet jupiter = new Planet(1000, 450, 28, 1000-720, 0.021 * 2 * 2,jupiterImage);
  jupiter.setInfo("Jupiter\nDiameter: 88,729 miles\nDistance from the Sun: 483.6 million miles\nPeriod of Orbit: 11.862 Earth years");
  planets.add(jupiter);
  Moon io = new Moon(1000, 410, 1.7, 450-410, 4, 8.9,moonImage);
  io.setInfo("Io\nDiameter: 2,263.8 miles\nDistance from Jupiter: 262,000 miles\nPeriod of Orbit: 42 hours");
  Moon europa = new Moon(1000, 490, 1.2, 490-450, 4, 8.8,moonImage);
  europa.setInfo("Europa\nDiameter: 1,939.7 miles\nDistance from Jupiter: 414,000 miles\nPeriod of Orbit: 85 hours");
  Moon ganymede = new Moon(960, 450, 2.4, 1000-960, 4, 8.5,moonImage);
  ganymede.setInfo("Ganymede\nDiameter: 3,273.5 miles\nDistance from Jupiter: 665,000 miles\nPeriod of Orbit: 7.15 Earth days");
  Moon callisto = new Moon(1040, 450, 2.2, 1040-1000, 4, 8,moonImage);
  callisto.setInfo("Callisto\nDiameter: 2,995.4 miles\nDistance from Jupiter: 1,168,000 miles\nPeriod of Orbit: 16.7 Earth days");
  jupiter.addMoon(io);
  jupiter.addMoon(europa);
  jupiter.addMoon(ganymede);
  jupiter.addMoon(callisto);
  
  PImage saturnImage = loadImage("saturn.jpg");
  Planet saturn = new Planet(1080, 450, 20, 1080-720, 0.0175 * 2,saturnImage);
  saturn.setInfo("Saturn\nDiameter: 74,600 miles\nDistance from the Sun: 886.7 million miles\nPeriod of Orbit: 29.5 Earth years");
  planets.add(saturn);
  Moon titan = new Moon(1080, 480, 2.4, 30, 5, 8,moonImage);
  titan.setInfo("Titan\nDiameter: 3,199.7 miles\nDistance from Saturn: 759,220 miles\nPeriod of Orbit: 16 Earth days");
  Moon dione = new Moon(1080, 420, .5, 30, 5, 8.8,moonImage);
  dione.setInfo("Dione\nDiameter: 697.68 miles\nDistance from Saturn: 698 miles\nPeriod of Orbit: 2.7 Earth days");
  saturn.addMoon(titan);
  saturn.addMoon(dione);

  PImage uranusImage = loadImage("uranus.jpeg");
  Planet uranus = new Planet(1150, 450, 11, 1150-720, 0.01 * 2,uranusImage);
  uranus.setInfo("Uranus\nDiameter: 32,600 miles\nDistance from the Sun: 1784 million miles\nPeriod of Orbit: 84 Earth years");
  planets.add(uranus);
  Moon miranda = new Moon(1150, 435, .4, 450-435, 6, 8.85,moonImage);
  miranda.setInfo("Miranda\nDiameter: 293.04 miles\nDistance from Uranus: 80,685 miles\nPeriod of Orbit: 1.413 Earth days");
  Moon ariel = new Moon(1150, 470, .5, 20, 6, 8.8,moonImage);
  ariel.setInfo("Ariel\nDiameter: 720 miles\nDistance from Uranus: 118,638 miles\nPeriod of Orbit: 2.5 Earth days");
  uranus.addMoon(miranda);
  uranus.addMoon(ariel);
  
  PImage neptuneImage = loadImage("neptune.jpg");
  Planet neptune = new Planet(1200, 450, 10, 1200-720, 0.005 * 2,neptuneImage);
  neptune.setInfo("Neptune\nDiameter: 30,200 miles\nDistance from the Sun: 2794.4 million miles\nPeriod of Orbit: 165 Earth years");
  planets.add(neptune);
  Moon triton = new Moon(1200, 435, 1.3, 15, 7, 8.6,moonImage);
  triton.setInfo("Triton\nDiameter: 1,682 miles\nDistance from Neptune: 220,438 miles\nPeriod of Orbit: 5.877 Earth days");
  neptune.addMoon(triton);

  PImage plutoImage = loadImage("pluto.jpg");
  Planet pluto = new Planet(1260, 450, 1, 1260-720, 0.0035 * 2,plutoImage);
  pluto.setInfo("Pluto\nDiameter: 1413 miles\nDistance from the Sun: 3674.5 million miles\nPeriod of Orbit: 248 Earth years");
  planets.add(pluto);
  
  Button info = new Button(200,500);
  buttons.add(info);
  
  Celesties c = notPlanets.get(0);
  //hi sorry i commented this out bc i wasn't sure how it should look like and it 
  //generated the planets in a weird position in the beg 
  //pushMatrix();
  //if(c.camera == true){
  //  camera(c.centerX-200, c.centerY-200, 0, c.centerX, c.centerY, 0, 1.0, 1.0, 1.0);
  //}
  //for(int i = 0; i < planets.size(); i++){
  //  Planet p = planets.get(i);
  //  if(p.camera == true){
  //    camera(p.centerX-200, p.centerY-200, 0, p.centerX, p.centerY, 0, 1.0, 1.0, 1.0);
  //  }
  //  p.display();
  //  if (p.hasMoon()) {
  //    p.displayEach();
  //  }
  //}
  //popMatrix();
  for(int i = 0; i < notPlanets.size(); i++){
      c.setScale(1);
      c.display();
      c.infoText();
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
  time = millis();
  
}

void draw(){
  if(!zoom){
    if(pushed){
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
      pushed = false;
    }
  }
  if(zoom){
    if(zoomNum >= 0 && zoomNum <= 9){
      if(zoomNum == 9){
        Celesties c = notPlanets.get(0);
        camera(c.centerX-200, c.centerY-200, 0, c.centerX, c.centerY, 0, 1.0, 1.0, 1.0);
        //text("" + zoomNum, c.centerX-100, c.centerY-100);
      }else{
        Planet p = planets.get(zoomNum);
        camera(p.centerX-200, p.centerY-200, 0, p.centerX, p.centerY, 0, 1.0, 1.0, 1.0);
        //text("" + zoomNum, p.centerX-100, p.centerY-100);
      }
    }
  }
  if(zoomNum > 9){
    camera();
    zoomNum = -1;
  }
       
  if (reset) {
    //if(pushed && zoomNum >= 0){
  //    popMatrix();
  //    pushed = false;
  //    zoomNum = -1;
  //  }
    //pushMatrix();
    scaleFactor = 1;
    leftFactor = rightFactor = upFactor = downFactor = 0;
    scale(scaleFactor);
    background(bg);
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
    totaltime = 0;
    passedtime = 0;
    difference = 0;
    move = false;
    reset = false;
    //popMatrix();
   }
  if (!move) {
    passedtime = totaltime;
    difference = millis();
  }
  if(move){
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
    
    background(bg);
    boolean over = buttons.get(0).overButton(mouseX,mouseY);
    text("mouseX mouseY" + mouseX + " " + mouseY,200,820);
    if (over) {
      fill(50);
      buttons.get(0).display();
    }
    else {
      fill(255);
      buttons.get(0).display();
    }
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
    //text("CenterX and centerY: " + notPlanets.get(0).getCenterX() + " " + notPlanets.get(0).getCenterY(),100,220);
    translate(-width/2,-height/2);
  }
  if(scaleU){
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      c.setScale(c.scale + 1);
    }
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      p.setScale(p.scale + 1);
      if(p.hasMoon()){
        p.scaleEachUp();
      }
    }
    scaleU = false;
  }
  if(scaleD){
    for(int i = 0; i < notPlanets.size(); i++){
      Celesties c = notPlanets.get(i);
      if(c.scale > 1){
        c.setScale(c.scale - 1);
      }
    }
    for(int i = 0; i < planets.size(); i++){
      Planet p = planets.get(i);
      if(p.scale > 1){
        p.setScale(p.scale - 1);
      }
      if(p.hasMoon()){
        p.scaleEachDown();
      }
    }
    scaleD = false;
  }
  for(int i = 0; i < notPlanets.size(); i++){
    Celesties c = notPlanets.get(i);
    //c.infoText();
  }
  for(int i = 0; i < planets.size(); i++){
    Planet p = planets.get(i);
    //p.infoText();
    if(p.hasMoon()){
      p.infoEach();
    }
  }
  text("" + zoomNum, 100-leftFactor+rightFactor, 200-upFactor+downFactor);
}

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
  if(key == CODED){
    if(keyCode == RIGHT){
      zoomNum++;
      pushed = true;
    }
  }
}


void mouseClicked(){
  mX = mouseX;
  mY = mouseY;
}
