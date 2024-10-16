// Inheritance (상속)

class Human {
  final String name;
  Human(this.name);
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

// player는 사람이니까 Human class를 그대로 가져오고 싶음.
// extends로 Human class 상속
class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
    // super가 부모 class와 상호작용할 수 있게 해줌.
  }) : super(name);
}

class Human1 {
  final String name;
  // 중괄호 써서 named parameter를 사용할 수 있게 한다.
  Human1({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

// player는 사람이니까 Human class를 그대로 가져오고 싶음.
// extends로 Human class 상속
class Player1 extends Human1 {
  final Team team;

  Player1({
    required this.team,
    required String name,
    // super가 부모 class와 상호작용할 수 있게 해줌.
    // super로 name을 부모 클래스로 전달.
  }) : super(name: name);

  // Human에서 온 sayHello를 여기서의 메소드로 override(대체)
  @override
  void sayHello() {
    // 부모에 있는 sayHello 함수 불러오기
    super.sayHello();
    print('and I play for ${team}');
  }
}

void main() {
  var player = Player(team: Team.red, name: 'me');
}
