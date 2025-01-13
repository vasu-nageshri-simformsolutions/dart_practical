class ShopingCart<T>{
  List<T> items= [];
  
  void addItem(T value){
    items.add(value);
  }
  
  void removeItem(T value){
    items.remove(value);
  }
  
  void showCart(){
    print('Items : $items');
  }
}
void main() {
  
  var itm1 = ShopingCart<int>();
      itm1.addItem(1);
      itm1.addItem(2);
      itm1.addItem(3);
      itm1.showCart();
  
  var itm2 = ShopingCart<String>();
      itm2.addItem('pant');
      itm2.addItem('t-shirt');
      itm2.showCart();
  
}
