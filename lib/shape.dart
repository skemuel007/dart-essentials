
abstract class Shape {
  Shape();
  Shape.fromAxis();
  double area();
}

class Circle extends Shape {
  double width, height;

  Circle(this.width, this.height): super();

  @override
  double area() {
    return width * height;
  }
}

class Oval extends Circle {

  Oval(double width) : super(width, width);

}

class Triangle extends Shape {
  double base, height;
  Triangle(this.base, this.height);

  @override
  double area() {
    return 0.5 * base * height;
  }
}