class Moon extends Celesties {
  private float orbit;
  private Planet planet;
  
  public Moon(float x, float y, float radius, float neworbit, Planet newplanet) {
    this.centerX = x;
    this.centerY = y;
    this.radius = radius;
    orbit = neworbit;
    planet = newplanet;
  }
  
}