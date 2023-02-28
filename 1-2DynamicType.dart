void main() {
  var name; // <- type : dynamic!!
  name = 'nico';
  name = 12;
  name = true;

  dynamic name2; //이렇게 선언하는 것도 가능

  name.hashCode //변수의 타입을 모르기 때문에 옵션이 많이 없음.

  if(name is String){
    name.isEmpty  //String에 관련 옵션 사용 가능
  }
  if(name is int){
    name.isEven
  }

}
