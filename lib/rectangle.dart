
import 'dart:async';

class Rectangle {
  int width, height;
  Rectangle(this.width, this.height);

  get area => width * height;

  Rectangle._create() {
    print('Rectangle object created');
  }

  bool operator <(Rectangle rect) => area < rect.area;
  bool operator >(Rectangle rect) => area > rect.area;
}