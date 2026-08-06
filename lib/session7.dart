question no.1
class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);
  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
  }
}
void main() {
  Car vechile = Car('Toyota', 'Corolla', 2022);
  vechile.displayInfo();
}

question no.2
class Student {
  String name;
  int age;
  String grade;

  Student()
  : name = 'Unknown',
  age = 0,
  grade = 'N/A';
  Student.guest()
  : name = 'Guest',
  age = 20,
  grade = 'Visitor';
  void showInfo() {
    print('Name: $name, Age: $age, Grade: $grade');
    void main() {
  Student student1 = Student();
  student1.showInfo();

  Student guestStudent = Student.guest();
  guestStudent.showInfo();
}

question no.3

class BankAccount {
 double _balance;
  BankAccount(this._balance);
  double get balance => _balance;
  set balance(double newBalance) {
  if (newBalance < 0) {
  print("Invalid balance");
  } else {
  _balance = newBalance;
  }
  }
}
void main() {
  var account = BankAccount(0);
  account.balance = 1000;
  print(account.balance);
  account.balance = -500;
  print(account.balance);
}

question no.4

class Animal {
String name;
Animal(this.name);
void makeSound() {
print('Animal sound');
}
}
class Dog extends Animal {
Dog(String name) : super(name);
@override
  void makeSound() {
  print('Dog: Woof!');
}
}
class Cat extends Animal {
Cat(String name) : super(name);
@override
void makeSound() {
 print('Cat: Meow!');
 }
}
void main() {
  Dog myDog = Dog('Doggy');
  Cat myCat = Cat('Kitten');

  myDog.makeSound();
  myCat.makeSound();
}

question no.5

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Employee extends Person {
  double salary;
  Employee(String name, int age, this.salary) : super(name, age);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Salary: \$$salary');
  }
}
void main() {
  Employee employee = Employee('Mohamed', 33, 10000);
  employee.displayInfo();
  }

  question no.6

  class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void displayInfo() {
    print('Book: $title');
    print('Author: $author');
  }
}
class BorrowedBook extends Book {
  bool _isBorrowed = false;

  BorrowedBook (String title, String author) : super("title", "author");

  void borrowBook() {
    if (_isBorrowed) {
      print('This book is already borrowed.');
    } else {
      _isBorrowed = true;
      print('Borrowed successfully.');
    }
  }
  void returnBook() {
    if (!_isBorrowed) {
      print('This book is already returned.');
    } else {
      _isBorrowed = false;
      print('Book returned successfully.');
    }
  }
  void getStatus() {
    String status = _isBorrowed ? 'Borrowed' : 'Available';
    print('Current Status: $status');

    void main() {
  var myBook = BorrowedBook('Flutter Basics', 'John');

  myBook.displayInfo();
  print(''); 
  myBook.borrowBook();       
  myBook.borrowBook();       
  myBook.returnBook();       
  myBook.getStatus();        
}


