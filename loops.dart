import 'dart:io';

void main() {
  List<String> shoppingList = [];

  print('Enter 3 items for your shopping list:');
  for (int i = 1; i <= 3; i++) {
    print('Enter item $i:');
    String item = stdin.readLineSync() ?? '';
    shoppingList.add(item);
  }


  bool addMoreItems = true;
  while (addMoreItems) {
    print('Would you like to add more items? (yes/no)');
    String response = stdin.readLineSync() ?? '';
    if (response.toLowerCase() == 'yes') {
      print('Enter another item:');
      String newItem = stdin.readLineSync() ?? '';
      shoppingList.add(newItem);
    } else {
      addMoreItems = false; 
    }
  }


  print('\nYour Shopping List:');
  int index = 0;
  do {
    print('${index + 1}. ${shoppingList[index]}');
    index++;
  } while (index < shoppingList.length);
}
