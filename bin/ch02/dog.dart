class Dog {
  String name = 'Toto';
  int age = 10;
  String color = 'black';
  int thirsty = 100;
  // no init = error , nullable 하지않으면 Error
  void drinkWater(Water w) {
    w.drink();
    thirsty -= 50;
  }
}

class Water {
  double liter = 2.0;
  void drink() {
    liter -= 0.5;
  }
}

// 코드의 진입점
void main() {
  // 객체란, 상태와 행위를 "함께" 지니며, 행위를 통해서 상태를 변경한다
  // 상호작용
  Dog dog1 = Dog();
  Water water = Water();
  print("thirsty : ${dog1.thirsty}, liter : ${water.liter}");
  dog1.drinkWater(water);
  print("thirsty : ${dog1.thirsty}, liter : ${water.liter}");
  dog1.drinkWater(water);
  print("thirsty : ${dog1.thirsty}, liter : ${water.liter}");
}

// 250724.0900
