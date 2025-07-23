void main() {
  // Dart 함수
  // 문제 1 - 원의 면적을 구하는 함수를 설계
  // 반지름 5.0
  print("Area of Circle : ${calculateCircleArea(5.0)}");

  // 문제 2 - 직사각형의 면적을 구하는 함수를 설계
  // 가로 3.0 세로 4.0
  print("Area of Rectangle : ${calculateRectangleArea(3.0, 4.0)}");
}

double calculateCircleArea(double radius) {
  double radiusSquare = radius * radius;
  return (3.14) * radiusSquare;
}

double calculateRectangleArea(double width, double height) {
  return width * height;
}
