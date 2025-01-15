// int addNumbers(int a, int b) {
//   return a + b; // Returns the sum immediately
// }

// void main() {
//   var result = addNumbers(5, 10);
//   print(result); // Output: 15
// }

// Iterable<int> generateNumbers(int start, int count) sync* {
//   for (int i = start; i < start + count; i++) {
//     yield i; // Yield each number one by one
//   }
// }

// void main() {
//   var numbers = generateNumbers(1, 5);
//   for (var number in numbers) {
//     print(number); // Output: 1, 2, 3, 4, 5
//   }
// }

// Future<int> addNumbersAsync(int a, int b) async {
//   return a + b; // Returns a Future
// }

// void main() async {
//   var result = await addNumbersAsync(5, 10);
//   print(result); // Output: 15
// }

Stream<int> generateNumbersAsync(int start, int count) async* {
  for (int i = start; i < start + count; i++) {
    yield i; // Yield each number asynchronously
  }
}

void main() async {
  await for (var number in generateNumbersAsync(1, 5)) {
    print(number); // Output: 1, 2, 3, 4, 5
  }
}
