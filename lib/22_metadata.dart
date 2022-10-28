


class Todo {
  final String who;
  final String what;
  // 常量构造函数
  const Todo(this.who,this.what);
}


class Teacher {
  /// 这是一个自定义注解。
  @Todo("xiaoming", "coding")
  void say(){

  }
  @Deprecated("这个函数已经弃用")
  void dep() {
    print("the function is deprecated");
  }



}



void main() {


  /**
   *
   *  元数据
   *
   * */


}





