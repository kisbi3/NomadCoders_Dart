//String interpolation : text에 변수를 추가하는 방법.
void main() {
  // 이미 변수가 존재할 때의 String interpolation은 아래와 같이 하면 된다.
  var name = 'nico';
  var greeting = 'Hello everyone, my name is $name, nice to meet you!';

  // 특정 변수를 불러오고, 계산을 해야 할 때에는 아래와 같이 하면 된다.
  var age = 10;
  var greeting2 = "Hello everyone, my name is $name and I'm ${age + 2}";
  var greeting3 = 'Hello everyone, my name is ${name} and I\'m ${age + 2}';
  print(greeting2);
  print(greeting3);
}
