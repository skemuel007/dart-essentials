import 'package:essential_dart/address.dart';
import 'package:essential_dart/expensive_object.dart';
import 'package:essential_dart/functions.dart' as func;
import 'package:essential_dart/rectangle.dart';
import 'package:essential_dart/user.dart';

void main(List<String> arguments) {
  assert(func.sum([1, 2, 3]) == 6);
  assert(func.sum([1, 2, 3], 10) == 16);

  User()
  ..name = 'Salvation'
  ..email =  'skemuel007@gmail.com'
  ..address = (Address()
      ..street = 'my street'
      ..suburb = 'my suburb'
      ..zipCode = '1000'
      ..log()
  )
  ..sayHi();

  var rect1 = Rectangle(100, 100);
  var rect2 = Rectangle(200, 150);
  assert(rect1 < rect2);
  assert(rect2 > rect1);

  ExpensiveObject();
  ExpensiveObject();

}

void numbers() {
  var x = 10;
  var y = 1.5;
  int age = 20;
  double price = 55.9;
  assert(x.toRadixString(8) == '12');
  assert(y.toStringAsFixed(2) == '1.50');
  var z = double.tryParse('3.14');
  assert(z == 3.14);
  print(z.runtimeType); // get the details
  assert(TrafficColor.red.index == 0);
  assert(TrafficColor.values.length == 3);

  var color = TrafficColor.red;
  switch (color) {
    case TrafficColor.red:
      print('stop');
      break;
    case TrafficColor.green:
      print('go');
      break;
    case TrafficColor.yellow:
      print('be careful');
  }
}

void strings() {
  var name = 'Salvation';
  assert('The length of $name is ${name.length}' == 'The length of Salvation is 9');
  var longString2 = "'This is also a long"
      " long"
      " long"
      " string'";

  name = '';
  if( name.isEmpty) {
    print('name is empty');
  }
}

void listMap() {
  var list1 = [1, 2, 3];
  var list2 = List<int>(3);
  var map = {'a': 'A', 'b': 'B'};
  var map2 = Map<String, String>();
}

enum TrafficColor { red, green, yellow }


