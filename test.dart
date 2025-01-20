String fun(){
  Future.delayed(Duration(seconds: 2)).then((v)=> print('inside'));
  // print("inside fun");
  return "inside fun";
}
void fun1(){
  for (var i = 0; i < 100000000; i++) {
    print("fun1: $i");
  }
}
void fun2(){
  for (var i = 0; i < 100000000; i++) {
    print("fun2: $i");
  }
}

void main() {
fun1();
fun2();
}