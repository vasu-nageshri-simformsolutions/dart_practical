// Default Constructor
class Person {
  String name = 'Unknown';
  int age = 0;
}

void main() {
  Person p = Person(); 
  print('${p.name}, ${p.age}'); 
}

// Parameterized Constructor
class Person {
  String name;
  int age;

  Person(this.name, this.age); 
}

void main() {
  Person p = Person('Alice', 30);
  print('${p.name}, ${p.age}'); 
}

// Named Constructor
class Person {
  String name;
  int age;

  Person.namedAdult(this.name) : age = 18; 

  Person.namedChild(this.name) : age = 10; 
}

void main() {
  Person adult = Person.namedAdult('Bob');
  Person child = Person.namedChild('Charlie');
  print('${adult.name}, ${adult.age}'); 
  print('${child.name}, ${child.age}'); 
}

// Factory Constructor
// Constant Constructor
class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y); 
}

void main() {
  const p1 = ImmutablePoint(10, 20);
  const p2 = ImmutablePoint(10, 20);

  print(identical(p1, p2)); 
}
