// Superclass
class Shape {
  // Method to calculate area (to be overridden in subclasses)
  double calculateArea() {
    return 0.0; // Default implementation
  }

  // Method to display area
  void displayArea() {
    print('The area is: ${calculateArea().toStringAsFixed(2)}');
  }
}

// Subclass: Circle
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius; // πr²
  }
}

// Subclass: Rectangle
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height; // w × h
  }
}

// Subclass: Triangle
class Triangle extends Shape {
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  double calculateArea() {
    return 0.5 * base * height; // ½ × b × h
  }
}

void main() {
  // Create instances of different shapes
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 7.0);
  Shape triangle = Triangle(3.0, 6.0);

  // Display the area for each shape
  print('Circle:');
  circle.displayArea();

  print('\nRectangle:');
  rectangle.displayArea();

  print('\nTriangle:');
  triangle.displayArea();
}
