void main() {
  //Animal(name: "Tiger");
  Dog d1 = Dog("TigerDog", "Catfood");
  print(d1.name);
}

// Parent Class
class Animal {
  String name;
  Animal(this.name);
  // Animal({this.name = "Animal"}); Optional parameter
  // Named constructor
  // Animal.name(this.name);
}

// Initialize : 생성자
class Dog extends Animal {
  // Dog(String name) {
  //   super(name);
  // }
  String breed;
  Dog(String name, this.breed) : super(name);
}

// super 라는 키워드는 부모 클래스의 생성자나 메서드를 호출할 때 사용할 수 있다
