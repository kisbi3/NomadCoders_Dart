void main() {
  //dart에서의 maps : Javascript, Typescript의 object와 Python의 dictionary 같은 거다.
  var player = {
    // <- type : Map<String, Object>
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  // Map<String, Object>
  // 위의 의미는 'key'의 타입은 'string', 'value'의 타입은 'Object'라는 것이다.
  // Object는 String이든, int든 상관 없다. 아무거나 들어올 수 있다는 것을 의미한다.

  // 아래는 map에서 key-value를 새로 추가하는 방법이다.
  player['omg'] = 10;
  print(player);
  print(player['name']);

  //만약, 아래 처럼 바꾼다면...
  var player2 = {
    // <- type : Map<String, String>
    'name': 'nico',
    'xp': '19.99',
    'superpower': 'false',
  };
  // 이렇게, 값도 전부 string으로 바꾸면 'value'의 타입도 'string'으로 바뀐 것을 알 수 있다.

  // 아니면, 아래 처럼 Map으로 아예 정의할 수 있다.
  Map<int, bool> player3 = {
    1: true,
    2: false,
  };
  Map<List<int>, bool> OMG = {
    [1, 2, 3, 4]: true,
  };
  List<Map<String, Object>> OMG2 = [
    {'name': 'nico', 'xp': 20000},
    {'name': 'nico', 'xp': 20000},
  ];
}
