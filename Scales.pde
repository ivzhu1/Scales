void setup() { 
  size(500, 500); 
  noLoop(); 
  background(0, 0, 255);
} 
void draw() { 
  for (int y = 700; y > -100; y = y - 70) { 
    for (int x = 700; x > -20; x = x - 60) { 
      scale(x, y); 
      x = x + 33;
    } 
    y = y+35;
  }
} 
void scale(int x, int y) { 
  stroke(1); 
  fill((int)((Math.random()*51)*5), (int)((Math.random()*51)*5), (int)((Math.random()*51)*5)); 
  bezier(x, y, x, y+25, x, y+25, x-50, y+50); 
  bezier(x, y, x-25, y, x-25, y, x-50, y+50); 
  noStroke(); 
  fill((int)((Math.random()*51)*4 + 51), (int)((Math.random()*51)*4 + 51), (int)((Math.random()*51)*4 + 51));
  bezier(x-5, y+5, x-5, y+20, x-5, y+20, x-40, y+40); 
  bezier(x-5, y+5, x-20, y+5, x-20, y+5, x-40, y+40);
}
