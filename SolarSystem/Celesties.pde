abstract class Celesties{
  float radius;
  float centerX, centerY; //center of object
  float rotateF; //rotation factor
  float speed;
  PImage image;
  String info;
  float scale = 1;
  
  /**A method for obtaining the radius
  *@return float
  */
  float getRadius(){
    return radius;
  }
  
  /**A method for obtaining the x coordinate
  *@return float
  */
  float getCenterX(){
    return centerX;
  }
  
  /**A method for obtaining the y coordinate
  *@return float
  */
  float getCenterY(){
    return centerY;
  }

  /**A method for obtaining the rotation factor
  *@return float
  */
  float getRotate(){
    return rotateF;
  }
  
  /**A method for obtaining the speed factor
  *@return float
  */
  float getSpeed(){
    return speed;
  }
  
  /**A method to store the image imported for each object
  */
  void storeImage(PImage newimage) {
    image = newimage;
  }
  
  void setRotate(float r){
    this.rotateF = r;
  }
  
  /**A method to change the radius
  */
  void changeSize(float s){
    this.radius = s;
  }
  
  /**A method to set the scale/size of the object
  */
  void setScale(float s){
    this.scale = s;
  }
  
  /**An abstract method to display information
  */
  abstract boolean infoText();
    
  /**An abstract method to display the object on the scree
  */
  abstract void display();
}
