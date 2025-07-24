// Mixin <-- 여러 클래스에서 재사용할 수 있는 기능을 제공하는 방법이다
mixin Logger {
  void log(String message) {
    DateTime now = DateTime.now();
    print("[$now] : $message");
  }
}

class UserService with Logger {
  void createUser(String name) {
    log("User creating : $name");
    // blah blah
    log("User creation completed");
  }
}

void main() {
  // Logger logger = Logger();
  UserService userService = UserService();
  userService.createUser("HONG");

  // Java Interface : 구현해야할 메서드의 명세만 제공(추상적)
  // Dart Mixin : 완성된 기능을 그대로 제공(구체적)
}
