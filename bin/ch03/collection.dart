import 'dart:math';

void main() {
  // List : ArrayList
  List<int> nums = [1, 2, 3, 4];
  // print(nums[0]);
  // print(nums[1]);
  // print(nums[2]);
  // print(nums[3]);
  for (int num in nums) {
    print(num);
  }

  List<String> fruits = ['apple', 'banana', 'orange', 'kiwi', 'grape'];
  for (String fruit in fruits) {
    print(fruit);
  }

  print("= = = = = = = = = = = = = = = =");
  // Map : key-value
  Map<String, dynamic> user = {"id": 1, "username": "cos"};
  print(user["id"]);
  print(user["username"]);

  print("= = = = = = = = = = = = = = = =");
  // Set : No Duplicate allowed
  Set<int> lotto = {};
  // Random class from dart:math library,
  Random r = Random();
  for (int i = 0; i < 6; i++) {
    lotto.add(r.nextInt(45) + 1);
  }
  print(lotto);
  // toList() : Set -> List
  List<int> lottoList = lotto.toList();
  // List can be aligned by sort() method,
  lottoList.sort();
  print(lottoList);
}
