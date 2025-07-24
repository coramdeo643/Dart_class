// abstract class
abstract class Vehicle {
  String brand;
  Vehicle(this.brand);
  // 추상 메서드 만들기
  void start(); // 강제성을 제공해야 할 때

  // 일반 메서드
  void displayInfo() {
    print("brand name : ${brand}");
  }
}

class Car extends Vehicle {
  Car(String brand) : super(brand);

  @override
  void start() {
    print("$brand Car is starting");
  }
}

class Flyable {
  void fly() {
    print("fly");
  }
}

class Swimmable {
  void swim() {
    print("swim");
  }
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("flying");
  }

  @override
  void swim() {
    print("swimming");
  }
}

void main() {}
