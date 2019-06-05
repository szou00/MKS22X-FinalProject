class Button {
  
  int bw,bl,bx,by;      // Position of square button
  boolean over = false;
  
  Button(int x, int y) {
    bx = x;
    by = y;
  }
  
    
  void changeButton(int x, int y)  {
  if (x >= bx && x <= bx+80 && 
      y >= by && y <= by+20) {
       display1();
       over = true;
       //text("display1",200,670);
      }
    else {
      display2();
      //text("display2",200,680);
    }
    //text("bx by " + bx + " " + by,200,650);
    //text("bx+bw and by+bl" + (bx+bw) + " " + (by+bl),200,690);

  }
  
  boolean pressed() {
    return over;
  }
  
  void display1() {
    fill(204);
    rect(bx,by,80,20);
  }
  
  void display2() {
    fill(255);
    rect(bx,by,80,20);
  }
  
}
