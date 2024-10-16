class Player {
  final String name;
  // 아래처럼 한번에 선언할 수도 있다.
  int xp, age;
  String team;

  // 변수 순서 안중요함.
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  // ':'(colon) 뒤 -> class initialize
  // named parameter 이용하는 경우
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  // positional parameter를 이용하는 경우
  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  // 두 개의 constructor들을 만들어보자.
  // 1. xp = 0인 blue팀 player 생성
  // 2. xp = 0인 red 팀 player 생성

  var player = Player.createBluePlayer(name: "me", age: 25);
  var player2 = Player.createRedPlayer("me", 21);
}
