















question no.1
class BankAccount {
  double _balance;
  BankAccount([this._balance = 0]);
  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }
  

question no.2
class Student {
  String _name;
  double _grade;

  Student( this._name, this._grade);
  String get name => _name;

  set name(String value) => _name = value;

  double get grade => _grade;
  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      throw ArgumentError('Grade must be between 0 and 100');
    }
  }
}

question no.3
class Vehicle {
  String brand;
  double speed;

  Vehicle( this.brand, this.speed);

  void info() {
    print('Brand: $brand, Speed: $speed km/h');
  }
}
class Car extends Vehicle {
  int doors;

  Car(String brand, double speed, this.doors) : super(brand, speed);
  @override
  void info() {
    super.info();
    print('Doors: $doors');
  }
}
void main() {
  Car myCar = Car('Nissan', 100, 4);
  myCar.info();
}

question no.4

class Animal {
  String name;
  Animal(this.name);
}

class Dog extends Animal {
  String breed;
  Dog(String name, this.breed) : super(name);
}

void main() {
  Dog myDog = Dog('Doggy', 'Golden');
  
  print('Name: ${myDog.name}');
  print('Breed: ${myDog.breed}');
}

question no.5 

import 'dart:math' as math;

abstract class Shape {
  double area();
}
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width,this.height);

 @override
  double area() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);
  @override
  double area() {
    return math.pi * radius * radius;
  }
}

void main() {
  Shape myRectangle = Rectangle(6, 10);
  Shape myCircle = Circle(4);

  print('Rectangle Area: ${myRectangle.area()}'); 
  print('Circle Area: ${myCircle.area()}'); 
}


question no.6

abstract class Employee {
  String name;
  double salary;

  Employee(this.name,this.salary);
  void work();
  void introduce() {
    print("hi, my name is $name.");
  }
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  @override
  void work() {
    print("$name is building software.");
  }
}

void main() {
  Developer info = Developer("Ahmed ", 10000);

  info.introduce();
  info.work();
}


question no.7

abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}
class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print('The duck is flying.');
  }
  @override
  void swim() {
    print('The duck is swimming in the water.');
  }
}
void main() {
  final duck = Duck();
  duck.fly();
  duck.swim();
}


question no8.

abstract class Drawable {
  void draw();
  String getColor();
}
class Square implements Drawable {
  final double sideLength;
  final String color;

  Square( this.sideLength, this.color);

  @override
  void draw() {
    print('◽ Drawing a Square with side length: $sideLength');
  }
  @override
  String getColor() {
    return color;
  }
}
class Triangle implements Drawable {
  final double base;
  final double height;
  final String color;

  Triangle(this.base, this.height,this.color);

  @override
  void draw() {
    print('🔺 Drawing a Triangle with base: $base and height: $height');
  }

  @override
  String getColor() {
    return color;
  }
}

void main() {
  final Drawable mySquare = Square(5, 'Blue');
  final Drawable myTriangle = Triangle(3, 6, 'Red');

  mySquare.draw();
  print('Square Color: ${mySquare.getColor()}');

  myTriangle.draw();
  print('Triangle Color: ${myTriangle.getColor()}');
}

question no.9

class Counter {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
  }
  void decrement() {
    if (_count > 0) {
      _count--;
    }
  }
  void reset() {
    _count = 0;
  }
}
void main() {
  final counter = Counter();
  print('first value: ${counter.count}');

  counter.increment();
  print('increment: ${counter.count}'); 

  counter.decrement();
  print('decrement: ${counter.count}'); 

  // Test(never below 0)
  counter.decrement();
  print('trying to decrement below 0: ${counter.count}');

  counter.increment();
  counter.reset();
  print('reset: ${counter.count}');
}