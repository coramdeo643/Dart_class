void main() {
  // 4 ... spread operator : deep copy
  var list = [1, 2, 3, 4, 5];
  var newList = [...list];
  print(newList);
  newList[0] = 5000;
  print(newList);
  print("= = = = = = = = = = = = = = = =");
  // wrong deep copy sample
  var list2 = [
    {"id": 1},
    {"id": 2}
  ];
  var newList2 = [...list2];
  newList2[0]["id"] = 5000;
  print(list2);
  print(newList2);
  print(list2.hashCode);
  print(newList2.hashCode);
  // different hashCode, but same value
  print("= = = = = = = = = = = = = = = =");
  // correct deep copy sample
  var list3 = [
    {"id": 1},
    {"id": 2}
  ];
  var newList3 = list3.map((i) => {...i}).toList();
  newList3[0]["id"] = 5000;
  print(list3);
  print(newList3);
  print(list3.hashCode);
  print(newList3.hashCode);
  print("= = = = = = = = = = = = = = = =");
  // add value to the collection
  var newList4 = [...list, 7];
  print(list);
  print(newList4);
}
