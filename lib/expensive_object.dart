
class ExpensiveObject {

  static ExpensiveObject _instance;
  ExpensiveObject._create() {
    print('created');
  }

  factory ExpensiveObject() {
    if ( _instance == null) {
      _instance = ExpensiveObject._create();
    }
    return _instance;
  }
}