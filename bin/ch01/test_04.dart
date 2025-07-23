void main() {
// Dart - 익명 함수
// 1단계 - 이름이 없는 함수(선언하더라도 사용할방법이 없다)
// Dart 언어는 익명함수를 변수에 담을수있다
// var a(int num) { return 10 + num; }
  var a = (int num) {
    return 100 + num;
  };

  print(a); // 함수 자체를 출력하는 문법

  print(a(10)); // 함수를 호출, 실행시키는 방법?

  print(a.runtimeType);

  // dart 언어는 일급 객체를 지원합니다.
  // 자바에서는 함수를 변수에 담을수없다
  // dart는 매개 변수안에 함수를 선언할수있다.

  // 2단계
  int Function(int) b = (int num) {
    return num * num;
  };

  Function b1 = (int num) {
    return num * num;
  };

  var c = (int num, int num2) {
    return num * num2;
  };

  (int num, int num2) {
    return num * num2;
  };

  // 3단계
  // dart 는 파라미터 타입을 생략가능
  Function sub = (int a, int b) {
    return a * b;
  };

  Function sub1 = (a, b) {
    return a * b;
  };

  var sum1 = sub1(10, 20.0);
  print(sum1);

  // 4단계
  // var multiply = (a, b) {
  //   return a * b;
  // };

  multiply(a, b) {
    return a * b;
  }

  print(multiply(1.1, 2));

  // 5단계
  // 함수의 인수값으로 함수를 전달받을수있다
  performOperation(10, 2, add);
  performOperation(10, 2, multiply2);
}

/*
(매개변수) {
// 수행구문
};
 */
// 전달될 함수들 선언
int add(int a, int b) {
  return a + b;
}

int multiply2(int a, int b) {
  return a * b;
}

// 매개변수로 함수를 받는 함수를 선언
void performOperation(int a, int b, int Function(int, int) operation) {
  print(operation(a, b));
}
