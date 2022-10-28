

/// https://dart.cn/guides/language/language-tour#abstract-classes



class Person {
  final String _name;
  // 构造函数，终值初始化
  Person(this._name);
  void walk() {

    print("walk");
  }

}


class Human {
  final String _name;
  // 构造函数，终值初始化
  Human(this._name);
  void walk1() {

    print("human walk");
  }

}


class Student extends  Person {
  //  终值初始化
  Student(super.name);
  String get nickname => 'student_$_name';
  // 这里用于覆盖基类的walk方法。
  @override
  void walk() {
    //  调用基类方法
    super.walk();
    print("$nickname walk");
  }
  /// 当调用类成员方法，且没有该方法时，会调用该函数
  /// 不存在的成员，会触发一个,NoSuchMethodError的错误.
  @override
  noSuchMethod(Invocation invocation) {
    print("$nickname current ${invocation.toString()}");
    return super.noSuchMethod(invocation);
  }
}


class Teacher extends Person {
  //  终值初始化
  Teacher(super.name);
  String get nickname => 'teacher_$_name';
  // 这里用于覆盖基类的walk方法。
  @override
  void walk() {
    // 调用基类方法
    super.walk();
    print("$nickname walk");
  }

  /// 当调用类成员方法，且没有该方法时，会调用该函数
  /// 不存在的成员，会触发一个,NoSuchMethodError的错误.
  @override
  noSuchMethod(Invocation invocation) {
    print("$nickname current ${invocation.toString()}");
    return super.noSuchMethod(invocation);
  }
}



/// walk 实现多态
/// 多态，指为不同数据类型的实体提供统一的接口
void walk(Person p) {
  p.walk();
}


void main() {
  Student stu = Student("小明");
  Teacher tea = Teacher("王");
  walk(stu);
  walk(tea);

}





