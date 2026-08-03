
import 'package:dart_application_1/session_class.dart';

void main(){

}




/*
question no.1
class PersonClass {
String name;
int age;
String city;
PersonClass({required this.name ,required this.age ,required this.city});
void printInfo(){
  print("name: $name");
  print("age: $age");
  print("city: $city");
}
}
void main(){
 PersonClass person1 =PersonClass(
  name: "Mohamed",
  age: 30,
  city: "Cairo"
 );
 PersonClass person2 =PersonClass(
  name: "Ahmed",
  age: 33,
  city: "Alex"
 );
 person1.printInfo();
 person2.printInfo();
}

question no.2
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() {
    return width * height;
  }
  double perimeter() {
    return 2 * (width + height);
  }
  void main() {

  Rectangel rect = Rectangle(4, 8.5);

  print('Width: ${rect.width}');
  print('Height: ${rect.height}');
  print('Area: ${rect.area()}');
  print('Perimeter: ${rect.perimeter()}');
}
}

question no.3

class BankAccount {
  String owner;
  double balance;

  BankAccount(this.owner, this.balance);

  BankAccount.empty(this.owner) : balance = 0.0;

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: \$$amount. Current Balance: \$$balance');
    } else {
      print('Invalid process.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrew: \$$amount. Current Balance: \$$balance');
    } else if (amount > balance) {
      print('Insufficient funds. Current Balance: \$$balance');
    } else {
      print('Invalid process.');
    }
  }
}

void main() {
  var myAccount = BankAccount.empty('Alice');
  print('Account Owner: ${myAccount.owner}');
  print('Initial Balance: \$$myAccount.balance\n');

  myAccount.deposit(1000);  
  myAccount.withdraw(700); 
  myAccount.withdraw(450); 
}

question no.4

class Student {
  String name;
  List<double> grades;
  Student(this.name, this.grades);
}
 double average() {
    if (grades.isEmpty)
     return 0;
    double sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
  String status() {
    return average() >= 60 ? "Pass" : "Fail";
  }
}

question no.5 

class Product {
  String name;
  double price;
  bool inStock;

  Product(this.name, this.price, {this.inStock = true});

  Product.outOfStock(this.name, this.price) : inStock = false;
  @override
  String toString() {
    return 'Product: $name, Price: \$$price, In Stock: $inStock';
  }
  void main() {
  
  Product p1 = Product('TV', 1500);
  Product p2 = Product('Reciever', 250.5, inStock: true);
  Product p3 = Product.outOfStock('Controller', 150);

  print(p1);
  print(p2);
  print(p3);
}
}
*/