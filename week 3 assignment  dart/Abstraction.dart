// Abstract class
abstract class Animal {
  String name;

  Animal(this.name);

  // Abstract method (no implementation in the abstract class)
  void sound();

  // Concrete method (shared by all subclasses)
  void displayInfo() {
    print('This is a $name.');
  }
}

// Subclass: Dog
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void sound() {
    print('$name says: Woof! Woof!');
  }
}

// Subclass: Cat
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void sound() {
    print('$name says: Meow! Meow!');
  }
}

// Subclass: Cow
class Cow extends Animal {
  Cow(String name) : super(name);

  @override
  void sound() {
    print('$name says: Moo! Moo!');
  }
}

void main() {
  // Create instances of different animals
  Animal dog = Dog('Dog');
  Animal cat = Cat('Cat');
  Animal cow = Cow('Cow');

  // Use the abstract method and shared method
  dog.displayInfo();
  dog.sound();

  print('');

  cat.displayInfo();
  cat.sound();

  print('');

  cow.displayInfo();
  cow.sound();
}
