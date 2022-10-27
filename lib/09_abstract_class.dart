


abstract class Person {
  /// 抽象方法
  void eat();
  /// 抽象方法
  void walk();
  /// 抽象方法
  void sleep();
  /// 抽象方法
  void work();
}

class Teacher extends Person {

  final String _name;
  Teacher(this._name);

  String get nickname => '$_name-teacher';


  @override
  void eat() {
    print("$nickname:eat");
  }

  @override
  void sleep() {
    print("$nickname:sleep");
  }

  @override
  void walk() {
    print("$nickname:walk");
  }

  @override
  void work() {
    print("$nickname:work");
  }

}



void main() {


  /**
   *
   *   抽象类，只能被继承，不能被实例化。常常被用于声明接口方法
   *
   * */

  Teacher t1 = Teacher("xiaoming");

  t1.eat();
  t1.sleep();
  t1.walk();
  t1.work();


}