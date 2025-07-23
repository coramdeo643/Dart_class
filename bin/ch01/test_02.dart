void main() {
  print(addOne(10));
  multiple(5);
}

int addOne(int n) {
  return n + 1;
}

void multiple(int num) {
  for (int i = 1; i < 10; i++) {
    print("$num * $i = ${num * i}");
  }
}
