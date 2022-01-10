

float k = 2/random(7);

void setup() {
  size(400, 400);
  background(#129575);
  colorMode(HSB,255,255,255);
  strokeWeight(0.01);
}
void draw() {
  translate(width/2, height/2);
  scale(200, 200);
  float t = frameCount / 20.0;
  float x = cos(k*t) * sin(t);
  float y = cos(k*t) * cos(t); 
  stroke(random(255),150,200);
  line(0, 0, x, y);
}



