// void main() {
//   // late는 초기 데이터 없이 변수를 선언할 수 있게 해줌
//   late final name1;
//   late final String name2;
//   late var name3;

//   print(
//       name1); // <- The late local variable 'name1' is definitely unassigned at this point.

//   final int name4;
//   name4 = 1;
//   print(name4);
// }

// Using null safety, incorrectly:
class Coffee {
  late String _temperature;

  void heat() {
    _temperature = 'hot';
  }

  void chill() {
    _temperature = 'iced';
  }

  String serve() => _temperature + ' coffee';
}

main() {
  var coffee = Coffee();
  coffee.heat();
  print(coffee.serve());
}
