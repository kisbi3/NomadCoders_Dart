void main() {
  String nico1 = 'nico';
  nico1 = null; //<- 바로 에러가 뜬다. non-nullable이기 때문!

  String? nico2 = 'nico';
  nico2 = null; //<- 에러가 안뜬다! '?'를 붙이면 nullable이 되기 때문!

  nico1.length;
  nico2.length;

  // 방법 1
  if (nico2 != null) {
    nico2.isNotEmpty;
  }
  // 방법 2
  nico2?.isNotEmpty;
}
