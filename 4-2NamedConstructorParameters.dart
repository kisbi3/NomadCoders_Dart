class Player2 {
  final String name;
  int xp;
  String team;
  int age;

  // 변수 순서 중요함.
  Player2(this.name, this.xp, this.team, this.age);

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Player {
  final String name;
  int xp;
  String team;
  int age;

  // 변수 순서 안중요함.
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player(name: 'me', xp: 1200, team: 'blue', age: 25);
}
