
import 'dart:html';

import 'package:essential_dart/mixins.dart';

class Pair<F, S> {
  F first;
  S second;

  Pair(this.first, this.second);
}

class Person {}

class Teacher extends Person {}

class Student extends Person {}

class CardHolder<P extends Person> {
  P holder;
  CardHolder(this.holder);
}

class Calculator {
  T add<T extends num>(T v1, T v2) => v1 + v2;
  T substract<T extends num>(T v1, T v2) => v1 - v2;
}

void main() {
  var pair = Pair<String, int>('a', 1);
  print(pair.first);
  var student = Student();
  var cardHolder = CardHolder<Student>(student);
  print(cardHolder is CardHolder<Student>);
  print(cardHolder);
  var calculator = Calculator();
  int r1 = calculator.add(1, 2);
  print(r1);
}