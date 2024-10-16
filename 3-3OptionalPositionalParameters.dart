// named argument는 쓰고 싶지 않지만 country는 required하지 않게 하려면?
// 1. 대괄호를 씌워준다.
// 2. ?를 붙여서 nullable하게 만든다.
// 3. default value를 설정한다.
String sayHello(String name, int age, [String? country = 'korea']) =>
    "Hello $name, you are $age, and you come from $country";

void main() {
  var results = sayHello('me', 25);
  print(results);
  // 결과: Hello me, you are 25, and you come from korea
}
