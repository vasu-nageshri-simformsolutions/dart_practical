abstract class Vehicle {
  void start();  
  void stop();   
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car started.");
  }

  @override
  void stop() {
    print("Car stopped.");
  }
}

void main() {
  var car = Car();
  car.start();  
  car.stop();   
}
