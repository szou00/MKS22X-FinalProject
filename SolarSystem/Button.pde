class Button {
  
  int bw,bl,bx,by;      // Position of square button
  int bSize = 20;     // Diameter of rect
  //color rectColor, rectHighlight;
  boolean over = false;
  
  Button(int x, int y) {
    bx = x;
    by = y;
  }
  
    
  boolean overButton(int x, int y)  {
  if (x >= bx && x <= bx+bw && 
      y >= by && y <= by+bl) {
    return true; 
      }
    else {
    return false;
    }
  }
  
  void display() {
    rect(bx,by,50,20);
  }
  
}
