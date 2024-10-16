class Player {
  final String name;
  // 아래처럼 한번에 선언할 수도 있다.
  int xp;
  String team;

  // fromJson이라는 이름을 갖는 함수를 직접 만드는 것.
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  // api를 통해 데이터를 받아온다고 하자.
  var apiData = [
    {
      "name": "me",
      "team": 'blue',
      'xp': 0,
    },
    {
      "name": "me1",
      "team": 'blue',
      'xp': 0,
    },
    {
      "name": "me2",
      "team": 'blue',
      'xp': 0,
    },
  ];
  // forEach로 json 안에 있는 각각의 데이터를 가져와서 playerJson이라는 이름을 붙임.
  // Player.fromJson으로 constructor 생성.
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
