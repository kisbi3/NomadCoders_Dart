// 선택의 폭을 좁혀주는 기능을 함.
// 문자열로 쓰는게 아님.
// Team을 red와 blue로 한정시킴.
// 변수를 만드는 느낌인듯?
// 연속적인 값은 불가능할듯?
enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player {
  String name;
  // int xp;
  XPLevel xp;
  // String team;
  Team team;

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
  var me = Player(name: 'me', xp: XPLevel.beginner, team: Team.blue);
  // name, xp, team을 바꾸고 싶다면?
  me.name = 'another';
  me.xp = XPLevel.medium;
  me.team = Team.red;

  // 아래와 같이 쓸 수도 있음.
  var me2 = Player(name: 'me', xp: XPLevel.beginner, team: Team.blue)
    ..name = 'another'
    ..xp = XPLevel.pro
    ..team = Team.red
    ..sayHello();
  // 바로 앞에 class가 있다면 '.'이 바로 앞에 있는 class를 가리킨다
}
