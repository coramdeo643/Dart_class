void main() {
  // 1 For
  var list = [1, 2, 3, 4, 5];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print("= = = = = = = = = = = = = = = =");
  // 2 map : update the values
  var sushi = ["shirimp", "tuna", "salmon", "squid", "steak"];
  var sushiChange = sushi.map((i) => "Big_$i");
  print(sushiChange);
  // Iterator -> List
  print(sushiChange.toList());

  print("= = = = = = = = = = = = = = = =");
  // 3 Where : filtering the values(delete)
  var susiChange2 = sushi.where((i) => i != "salmon");
  print(susiChange2.toList());
}
