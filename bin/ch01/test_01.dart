void main() {
  /* Dart 상수
  상수 = 한번 할당된 값이 변하지 않는 변수
  키워드 const, final
  const = 컴파일 타임 상수(Compile-tine constant)
  final = 런 타임 상수(Run-time Constant)
  */
  final int n1 = 10;
  // 프로그램이 실행되는 도중에 값이 결정되며, 이후에는 변경 불가
  // n1 = 100; 불가
  const int n2 = 100;
  // 코드가 컴파일 될 때 값이 확정 되고, 이후에 변경 불가
  // n2 = 100; 불가
  print(n1 + n2);
}
