class Player {
  String name = 'me';
  // 아래와 같이 final 사용하면 수정 불가능함.
  final int xp = 1500;

  void sayHello() {
    // 아래와 같이 this.name을 사용해도 되지만...
    print("Hi my name is $this.name");
    // 아래와 같이 그냥 name을 사용해도 된다.
    // class method 내에서는 this를 사용하지 않는 것을 권고되고 있다.
    print("Hi my name is $name");
    // 아래와 같이 동일한 이름을 가진 변수가 있을 경우에는 this.name을 사용해야 한다.
    var name = 'eee';
  }
}
// 변수를 선언할 때에는 var같은 타입을 명시할 필요 없는 것을 사용할 수 있다.
// class에서는 무조건 타입을 명시해야 한다!

void main() {
  var player = Player();
  print(player.name); // 출력 결과: me
  player.name = 'another';
  print(player.name); // 출력 결과: another

  // 아래와 같이 수정 불가능.
  player.xp = 1000;
}
