void sayHello(String name) {
  print("Hello $name nice to meet you!");
  // void 이기 때문에 아래와 같이 'return'을 하면 에러가 난다.
  // return "Hello $name nice to meet you!";
}

//String을 return 하기 위해서는 void 대신 String으로 함수를 정의해주면 된다.
String sayHello2(String name) {
  return "Hello $name nice to meet you!";
}

// return을 fat arrow로 대체할 수 있음
String sayHello3(String name) => "Hello $name nice to meet you!";

//number를 return 하는 경우
num plus(num a, num b) => a + b;

void main() {
  print(sayHello2('Me'));
}
