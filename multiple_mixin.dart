mixin a{
  void display(){
    print('from a');
  }
}
mixin b{
  void display(){
    print('from b');
  }
}
mixin c{
  void display(){
    print('from c');
  }
}
class Abc with a,b,c{
  display();
}

void main(){
  var a = Abc();
  a.display();
}

