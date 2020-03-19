
import 'dart:math';

var random = Random();

class ValueTooLargeException implements Exception {
  int value;
  ValueTooLargeException(this.value);

  @override
  String toString() {
    return 'ValueTooLargeException{value: $value}';
  }
}

int getNumbers() {
  var value = random.nextInt(10);
  if ( value > 5) {
    throw ValueTooLargeException(5);
  }

  return value;
}

void main() {
  try{
    print(getNumbers());
  } on ValueTooLargeException catch(e) {
    print(e);
  } finally {
    print('in finally');
  }
}