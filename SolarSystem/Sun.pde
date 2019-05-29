class Sun extends Celesties{
  public ArrayList<Planet> planets;
  PImage image;
  PShape shape;
  PImage img;       // The source image
int cellsize = 2; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system

  
  public Sun(float x, float y, float radius){
    img  = loadImage("sunflower.jpg"); // Load the image
  cols = width/cellsize;             // Calculate # of columns
  rows = height/cellsize;            // Calculate # of rows
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    //this.img = newImage;
    planets = new ArrayList<Planet>();
  }
  
  void imageTexture(PImage newimage) {
    image = newimage;
  }
  
  
  void display(){
    for ( int i = 0; i < cols;i++) {
    // Begin loop for rows
    for ( int j = 0; j < rows;j++) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position
      int loc = x + y*width;           // Pixel array location
      color c = img.pixels[loc];       // Grab the color
      // Calculate a z position as a function of mouseX and pixel brightness
      float z = (mouseX/(float)width) * brightness(img.pixels[loc]) - 100.0;
      // Translate to the location, set fill and stroke, and draw the rect
      pushMatrix();
      translate(centerX,centerY,z);
      fill(c);
      noStroke();
      sphere(radius);
      rect(0,0,cellsize,cellsize);
      popMatrix();
    }
  }
    noStroke();
    lights();
    translate(centerX, centerY, 0);
    sphere(radius);
    //shape.setTexture(image);
    translate(-centerX, -centerY, 0);
  }
}
