void main() {
  List<String> footballPlayers = ['손흥민', '메시', '호날두', '김민재', '이강인'];
  // forEach
  footballPlayers.forEach((e) {
    print(e);
  });
  print("= = = = = = = = = = = = = = = = ");
  // lambda
  footballPlayers.forEach((e) => print("축구선수 : ${e}"));
  // lambda 단점
  // 아래 함수 처럼 분기 및 복잡한 함수는 람다식을 사용하기 어려움
  // 이럴경우에는 원래 하듯이 함수 body에 정의하는 것이 타당하다
  int substract(int a, int b) {
    if (a > b) {
      return a - b;
    } else {
      return b - a;
    }
  }
}

/*
int add(int a, int b) {
  return a+b;
}

int addArrow(int a, int b) => a+b;

 */
// 기존 함수 정의
int add1(int n1, int n2) {
  return n1 + n2;
}

int sub1(int n1, int n2) {
  return n1 - n2;
}

double div1(int n1, int n2) {
  return n1 / n2;
}

// 2. 위함수를 람다식으로 변경해보자
int add(int n1, int n2) => n1 + n2;
int sub(int n1, int n2) => n1 - n2;
double div(int n1, int n2) => n1 / n2;
