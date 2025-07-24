void main() {
  // null 병합 연산자(null 대체 연산자)
  /**
   * 1. null 에 안전한 객체의 사용 가능한 속성 접근
   */
  String? maybeName;
  int length = maybeName?.length ?? 0;
  // ??
  // =
  // if (maybeName != null) maybeName.length else 0;
  print("length : ${length}");
  /**
   * 2. null 에 안전한 객체 메서드 접근
   */
  String? name = getName();
  // 문자열 값을 무조건 소문자로 변형을 하고 싶다면
  String resultNname = name?.toLowerCase() ?? "HONG".toLowerCase();
  print('resultName : $resultNname');

  String displayName = name ?? 'Unknown';
  // if (name != null) {
  //   displayName = name;
  // }

  print('displayName : $displayName');

  // null 억제 연산자 또는 null assert 연산자 --> !
  // String? name2 = null;
  String? name2 = "HONG";
  // 강제적으로 null 값이 아니다 라고 명시할 때 사용할 수 있음
  // 단 null error 조심!
  String name3 = name2!;
  print('name3 : $name3');

  /*
  변수의 null 값 허용 여부
  String? name1;
  String name2;
  null check 연산자
  name1?.toLowerCase(); ?? "HONG".toLowerCase();
  */
}

// 함수
// String != String?(String nullable type)
String? getName() {
  return null;
}

// 250724.1000.
