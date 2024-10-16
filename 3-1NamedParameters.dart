// 일반적인 함수 선언 방식
String sayHello(String name, int age, String country) {
  return "Hello $name, you are $age, and you come from $country";
}

// Named Parameters 적용
String sayHello1({String name, int age, String country}) {
  return "Hello $name, you are $age, and you come from $country";
}

// null safety를 지키는 방법 1. default value 지정하기
String sayHello2(
    {String name = 'anon', int age = 99, String country = 'wakanda'}) {
  return "Hello $name, you are $age, and you come from $country";
}

// null safety를 지키는 방법 1. required modifier를 이용해서 필수 값으로 만들기.
String sayHello3(
    {required String name, required int age, required String country}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  print(sayHello1(age: 12, country: 'korea', name: 'me'));
}
