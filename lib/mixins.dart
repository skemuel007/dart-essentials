
class Person {
  String name;

  Person(this.name);
}

class Student extends Person with CardHolder {
  Student(String name) : super('Student: $name') {
    holder = this;
  }
}

class Teacher extends Person with CardHolder {
  Teacher(String name) : super('Teacher: $name') {
    holder = this;
  }
}

mixin CardHolder {
  Person holder;

  void swipeCard() {
    print('${holder.name} swiped the card');
  }
}

mixin SystemUser {
  Person user;

  void useSystem() {
    print('${user.name} used the system.');
  }
}