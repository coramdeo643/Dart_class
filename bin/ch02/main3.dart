void main() {
  // cascade 연산자,
  // 코드 한 줄로 객체를 변수로 넘겨 주면서 객체가 가진 함수를 호출할수있는
  // 유용한 표기법

  // cascade 연산자를 사용하면 아래와 같이 코드를 줄일수있다
  Chef c1 = Chef("Hong")..cook();
  // c1.cook();
}

class Chef {
  String name;

  Chef(this.name);

  void cook() {
    print("Cooking started by $name");
  }
}
