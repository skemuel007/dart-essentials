
class Square {
  final num top, left, width, height;

  Square(this.top, this.left, this.width, this.height);

  Square.fromPosition(this.top, this.left, num bottom, num right)
    : assert( right > left),
      assert( bottom > top ),
      width = right - left,
      height = bottom - top;

  @override
  String toString() {
    return 'Rectangle{top: $top, left: $left, width: $width, height: $height}';
  }
}