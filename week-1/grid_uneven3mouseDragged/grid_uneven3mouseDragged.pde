
void setup() {
  size(640,640);
  background(0);
    
}

void doDraw() {
  fill(0);
  rect(0,0,width,height);
  drawGrid(62, 32);
  drawGrid(26, 64);
  drawGridColor(13, 128);
  
}

void draw() {
  
}



void drawGrid(int n, int shadeofgray) {

  stroke(shadeofgray, shadeofgray, shadeofgray, 255);
  strokeWeight(1);
  
  for (int i=n; i<height; i=i+n) {
    line(
      int(random(-n, n)), 
      int(random(i-n, i+n)), 
      width, 
      int(random(i-n, i+n))
    );  
  }
  
  for (int i=n; i<width; i=i+n) {
    line(int(random(i-n, i+n)), 
    int(random(-n, n)), 
    int(random(i-n, i+n)), 
    height);  
  }
}

void drawGridColor(int n, int shadeofgray) {

  stroke(int(random(0,255)), int(random(0,255)), int(random(0,255)), shadeofgray);
  strokeWeight(1);
  
  for (int i=n; i<height; i=i+n) {
    line(
      int(random(-n, n)), 
      int(random(i-n, i+n)), 
      width, 
      int(random(i-n, i+n))
    );  
  }
  
  for (int i=n; i<width; i=i+n) {
    line(int(random(i-n, i+n)), 
    int(random(-n, n)), 
    int(random(i-n, i+n)), 
    height);  
  }
}


void mouseDragged() {
  doDraw();
}


