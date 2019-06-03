import java.util.Random;

class Star {
  float radius;
  float centerX;
  float centerY;
  PShape shape;
  
  public Star() {
    //Random rand = new Random();
    radius = 3/*(rand.nextInt(5) + 1)*/;
    centerX = random(width);
    centerY = random(height);
    noStroke();
    lights();
    fill(255,255,255,120);
    circle(centerX,centerY,3);
    //shape = createShape(SPHERE, radius);
    //shape.setTexture(newImage);
  }
  
  void display() {
    noStroke();
    lights();
    fill(255,255,255,120);
    circle(centerX,centerY,3);
  }
  
  
  
}
