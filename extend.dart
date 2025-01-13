class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  void displayInfo() {
    print('Name: $name, ID: $id, Salary: \$${salary.toStringAsFixed(2)}');
  }

  double calculateAnnualBonus() {
    return salary * 0.1; 
  }
}

class Manager extends Employee {
  double teamBudget;

  Manager(String name, int id, double salary, this.teamBudget)
      : super(name, id, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Team Budget: \$${teamBudget.toStringAsFixed(2)}');
  }

  @override
  double calculateAnnualBonus() {
    return salary * 0.2; 
  }
}


class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, int id, double salary, this.programmingLanguage)
      : super(name, id, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Programming Language: $programmingLanguage');
  }
}

void main() {
  var manager = Manager('Alice', 101, 90000, 50000);
  var developer = Developer('Bob', 102, 75000, 'Dart');

  print('Manager Info:');
  manager.displayInfo();
  print('Annual Bonus: \$${manager.calculateAnnualBonus().toStringAsFixed(2)}');

  print('\nDeveloper Info:');
  developer.displayInfo();
  print('Annual Bonus: \$${developer.calculateAnnualBonus().toStringAsFixed(2)}');
}
