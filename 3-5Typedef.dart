// 자료형이 헷갈릴 때 도움이 될 alias를 만드는 방법.
// 간단한 데이터의 alias를 만들때 사용.

typedef ListOfInts = List<int>;

List<int> reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  // reversed를 쓰면 다시 list로 변환해줘야 한다. ...?왜?
  return reversed.toList();
}

// List<int>대신 ListOfInts 사용.
ListOfInts reverseListOfNumbers2(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {}
