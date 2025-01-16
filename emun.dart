// enum color {
//
//   Red(1234),
//   Blue(2345),
//   Yellow(3456),
//   White(4567);
//   final int code;
//
//   const color({required this.code});
// }
//
// void main() {
//   var c = color.Red();
//   switch (c) {
//     case color.Red:
//       print("red");
//     case color.Blue:
//       print("blue");
//     case color.Yellow:
//       print("yellow");
//     case color.White:
//       print("white");
//     default:
//       print("default");
//   }
//   print('outside');
// }
void main() {
  print(Test.test1.id);
}

enum Test {
  test1(id: 1),
  test2(id: 2);

  final int id;

  const Test({required this.id});
}