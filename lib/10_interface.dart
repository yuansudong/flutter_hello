/// A person. The implicit interface contains greet().
class Person {
  // 包含在接口内, 但是是私有的.
  final String _name;

  // 构造函数，不包含在接口内
  Person(this._name);

  // greet 包含在接口内.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// Impostor 用于实现Person接口.
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}