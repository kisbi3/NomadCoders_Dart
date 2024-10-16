class Player {
  // late를 이용해서 변수 선언은 여기서 하지만 값은 나중에 받아온다고 하기.
  late String name;
  late final int xp;

  // 여기에서 값을 받아오기. class 이름과 똑같아야 함.
  // Constructor
  Player(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

// 다른 방법
class Player2 {
  String name;
  final int xp;

  // Constructor
  // 변수 순서 중요함.
  Player2(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player("me", 1000);
  player.sayHello(); // 출력결과: Hi my name is me
  var player2 = Player("another", 100);
  player2.sayHello(); // 출력결과: Hi my name is another
}
