class Button {
  
  int bw,bh,bx,by;      // Position of square button
  boolean over = false;
  String btext = "";
  
  /**A constructor for a button
  */
  Button(int x, int y, int w, int h) {
    bx = x;
    by = y;
    bw = w;
    bh = h;
  }
  
  /**A method that changes the color of the button slightly to reflect the position of mouse
  */
  void changeButton(int x, int y)  {
    if (x >= bx && x <= bx+bw && 
      y >= by && y <= by+bh) {
       display1();
       over = true;
      }
    else {
      display2();
      over = false;
    }

  }
  
  /**A method that checks returns whether the mouse is over the button
  *@return boolean
  */
  boolean hovering() {
    return over;
  }
  
  /**A method that sets what will be displayed above the button
  */
  void setText(String info) {
    btext = info;
  }
  
  /**A method that will change the button when the mosue is hovering over it
  */
  void display1() {
    fill(204);
    rect(bx,by,bw,bh);
    fill(0);
    text(btext,bx+10,by+12);
  }
  
  /**A method that will be carried out when the mouse is not hovering over the button
  */
  void display2() {
    fill(255);
    rect(bx,by,bw,bh);
    fill(0);
    text(btext,bx+10,by+12);
  }
  
}
