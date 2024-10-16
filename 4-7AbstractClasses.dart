// Abstract class(추상화 클래스)란?
// 절대 이렇게 작성할 일이 없는 클래스.
// 추상화 클래스로 객체를 생성할 수 없다.
// 다른 클래스들이 직접 구현 해야하는 메소드들을 모아 놓은 일종의 청사진(blueprint)라고 생각하면 된다.

// 다른 클래스들이 어떤 것을 구현해야 하는 것들을 정의해주는 역할.

// Human이란 class는 walk라는 함수가 있어야 한다.
abstract class Human {
  void walk();
}

enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

// extends Human 이걸로 사용할 수 있다.(상속, 확장)
// walk 함수가 없으면 '없어!!!'라고 소리친다. 만들어야 한다고.
// ** 특정 method를 구현하도록 강제함. 구현하라고만 하지, 어떻게 구현하는지는 강요하지 않는다.
class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  // 변수 순서 안중요함.
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print('I\'m walking');
  }

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
