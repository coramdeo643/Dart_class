void main() {
  // 1 wrong data update in collection
  var users = [
    {"id": 1, "username": "cos", "password": "1234"},
    {"id": 2, "username": "tan", "password": "5678"},
  ];
  // id : 2, username : tan -> love
  var newUser = users
      .map((user) => user["id"] == 2
          ? {"id": 2, "username": "love", "password": "5678"}
          : user)
      .toList();
  print(users);
  print(newUser);
  print("= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =");
  // 2 correct data update in collection
  var users2 = [
    {"id": 1, "username": "cos", "password": "1234"},
    {"id": 2, "username": "tan", "password": "5678"},
  ];
  // id : 2, username : tan -> love
  var newUser2 = users2
      .map((users2) =>
          users2["id"] == 2 ? {...users2, "username": "love"} : users2)
      .toList();
  print(users2);
  print(newUser2);
}
