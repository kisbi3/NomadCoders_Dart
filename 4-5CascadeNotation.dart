class Player {
  String name;
  int xp;
  String team;

  // 변수 순서 안중요함.
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var me = Player(name: 'me', xp: 1200, team: 'blue');
  // name, xp, team을 바꾸고 싶다면?
  me.name = 'another';
  me.xp = 1000;
  me.team = 'red';

  // 아래와 같이 쓸 수도 있음.
  var me2 = Player(name: 'me', xp: 1200, team: 'blue')
    ..name = 'another'
    ..xp = 1000
    ..team = 'red'
    ..sayHello();
  // 바로 앞에 class가 있다면 '.'이 바로 앞에 있는 class를 가리킨다
}
