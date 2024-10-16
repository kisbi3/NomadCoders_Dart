// 다음 함수의 name에 null도 들어갈 수 있도록 하고 싶다.
String CapitalizeName(String name) => name.toUpperCase();

// ?를 붙이면 toUpperCase가 에러라고 소리친다.
// 당연하지. null을 어떻게 대문자로 만들어.

// null이 아닐 경우 toUpperCase로 대문자로 만들기
// null이 들어올 경우 'ANON'으로 반환하기.

// 해결하는 방법 1 (가장 긴 방법)
String CapitalizeName2(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'ANON';
}

// 해결하는 방법 2 (방법 1을 줄이는 방법)
String CapitalizeName3(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

// 해결하는 방법 3 (방법 2를 줄이는 방법)
// left ?? right
// left가 null일 경우 right 반환.
// left가 null이 아닐 경우 left 반환.
String CapitalizeName4(String? name) => name.toUpperCase() ?? 'ANON';
//사실 위 경우에는 name 자체가 null일 경우에 toUpperCase를 호출할 수 없음. 따라서...
String CapitalizeName5(String? name) => name?.toUpperCase() ?? 'ANON';

void main() {
  CapitalizeName('me');
  CapitalizeName5(null);

  // ??=
  String? name;
  // name이 null인 경우 'me' 넣기.(null 아니면 그냥 유지)
  name ??= 'me';
  print(name); // 출력값: me
}
