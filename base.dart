base class User {
  final String name;

  User(this.name);

  void displayInfo() {
    print("User: $name");
  }
}

base class Admin extends User {
  Admin(String name) : super(name);

  @override
  void displayInfo() {
    print("Admin: $name");
  }
}

void main() {
  var admin = Admin("John");
  admin.displayInfo();  // Output: Admin: John
}
