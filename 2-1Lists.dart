void main() {
  // 끝을 쉼표로 마무리하면 저절로 여러 줄로 만들어짐!
  var numbers = [
    1,
    2,
    3,
    4,
  ]; //<- List
  List<int> numbers2 = [
    1,
    2,
    3,
    4,
  ]; //<- List of integer

  // collection if
  var giveMeFive = true;
  var numbers3 = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, //<- giveMeFive가 true라면 '5'라는 숫자 추가
  ];

  if (giveMeFive) {
    numbers.add(5);
  }
  print(numbers);
  print(numbers2);
  var numbers100 = [...numbers, ...numbers2];
  print(numbers100);
  List? num = [1, 1, 1, 1];
  var numbers101 = [...numbers, ...num];
}

// test(List<int> list) {
//   switch (list) {
//     case [1, 2]:
//       print('Matched');
//       break;
//     default:
//       print('Did not match');
//       break;
//   }
// }

// main() {
//   test(const [1, 2]); // Prints "Matched".
//   test([1, 2]); // Prints "Did not match".
// }
