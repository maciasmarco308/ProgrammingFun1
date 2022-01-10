
Car[] cars = new Car[50];
Car[] pinkCars = new Car[50];
void setup() {
  size(500, 400);
  for(int i=0; i<cars.length; i++) {
    cars[i] = new Car(20, random(height), #746AB0);
  }
  
  for(int j=0; j<cars.length; j++) {
    pinkCars[j] = new Car(20, random(height), #E389B9);
  }
}
void draw() {
  background(255);
  for(int i=0; i<cars.length; i++) {
    cars[i].drive(i);
  }
  
   for(int j=0; j<cars.length; j++) {
    pinkCars[j].drive(j);
  }
}

class Car {
  float x;
  float y;
  color c;
  
  Car(float carx, float cary, color carcolor) {
    x = carx;
    y = cary;
    c = carcolor;
  }
  void drive(int speed) {
    x = x + speed;
    if(x > width) {
      x = 0;
    }
    fill(c);
    rect(x, y, 40, 10);
  }
}



