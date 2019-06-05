class Button {
  
  int bw,bh,bx,by;      // Position of square button
  boolean over = false;
  String btext = "";
  
  Button(int x, int y, int w, int h) {
    bx = x;
    by = y;
    bw = w;
    bh = h;
  }
  
    
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
  
  boolean hovering() {
    return over;
  }
  
  void setText(String info) {
    btext = info;
  }
  
  void display1() {
    fill(204);
    rect(bx,by,bw,bh);
    fill(0);
    text(btext,bx+bw/5,by+12);
  }
  
  void display2() {
    fill(255);
    rect(bx,by,bw,bh);
    fill(0);
    text(btext,bx+bw/5,by+12);
  }
  
}
