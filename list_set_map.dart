void main() {

  List<String> shoppingList = ['Milk', 'Eggs', 'Bananas'];

  Map<String, List<String>> categorizedItems = {
    'Fruits': ['Apples', 'Bananas'],
    'Dairy': ['Milk', 'Cheese'],
  };

  Set<String> uniqueItems = {'Milk', 'Eggs', 'Bananas'};

  addItemToShoppingList(shoppingList, categorizedItems, 'Oranges', 'Fruits', uniqueItems);

  print('Shopping List: $shoppingList');
  print('Categorized Items: $categorizedItems');
  print('Unique Items: $uniqueItems');
}

void addItemToShoppingList(
    List<String> shoppingList, 
    Map<String, List<String>> categorizedItems,
    String item, 
    String category, 
    Set<String> uniqueItems) {
  

  if (!uniqueItems.contains(item)) {
    shoppingList.add(item);  
    categorizedItems.putIfAbsent(category, () => []).add(item);  
    uniqueItems.add(item); 
  } else {
    print('Item "$item" already exists in the shopping list!');
  }
}
