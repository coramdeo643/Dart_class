import 'dog.dart';

void main() {
  Dog d1 = Dog();
  Dog d2 = Dog();

  // Person p1 = Person('홍길동', 100_000);
  Person p2 = Person(money: 500, name: 'Hong');
  /*
  Person p1 = Person(name: '홍길동', money: 100000); // 이름과 돈 모두 제공
  Person p2 = Person(name: '김철수');                 // 이름만 제공 (money는 null)
  Person p3 = Person(money: 50000);                  // 돈만 제공 (name은 null)
  Person p4 = Person();                               // 아무것도 제공하지 않음 (name과 money 모두 null)
  */
}

class Person {
  String? name;
  int? money;
  // Dart 에서는 생성자 오버로딩을 지원하지 않는다
  // 왜? 더 강력한 선택적 매개변수 기법이 있기 때문이다
  // Person(String name, int money) {
  //   this.name = name;
  //   this.money = money;
  // }
  // Person(this.name, this.money);
  // Person(this.name);
  // 선택적 매개변수(Optional Parameters)를 활용해서 생성자 오버로딩을 선언할 필요가 없다
  Person({this.name, this.money});
}
