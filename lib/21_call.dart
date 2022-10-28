class WanFunction {
  String call(String a, String b, String c) => '$a $b $c';
}

void main() {
  /**
   *
   *  要想将类，当成函数一样调用，需要实现类的call方法。
   *
   * */
  WanFunction clsFunc = WanFunction();
  /// 下面代码的的执行,相当于执行了WanFunction类中的call函数。
  print(clsFunc('one', 'two', 'three'));
}
