void main() {
  // Set의 구성요소들은 'unique' 하다.
  // 중괄호 임을 주의하자.
  var numbers = {1, 2, 3, 4};
  Set<int> numbers1 = {1, 2, 3, 4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
  // 이렇게 1을 여러번 추가해도 1은 하나밖에 나오지 않는다.
  // 이렇게 똑같은 것은 하나로 바뀌어 진다.
  var OMG = {
    1,
    [1, 2],
    [1, 2]
  };
  print(OMG);
}
