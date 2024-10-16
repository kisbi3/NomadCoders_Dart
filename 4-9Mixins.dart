// Mixin : 생성자(constructor)가 없는 클래스
// 클래스에 프로퍼티들을 추가하거나 할 때 사용

mixin Strong {
  final double strengthLevel = 1500;
}

mixin QuickRunner {
  void runQuick() {
    print("Ruuuuuuuuun");
  }
}

mixin Tall {
  final double height = 1.80;
}

enum Team { blue, red }

// with으로 다른 클래스의 프로퍼티와 메소드들을 긁어옴.
// extends -> 부모 클래스를 만듦. super로 부모 클래스에 접근
// with -> 그냥 내부의 프로퍼티와 메소드들을 가져옴.
// 이때, Mixin은 생성자가 없는 클래스여야 함.
// super없이 그냥 함수를 사용할 수 있음.
class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}
