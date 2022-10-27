



/**
 *
 *
 * typedef，用于给类型起别名。目前个人用得最多的地方是定义函数的原型。
 *
 * */

// 常规起别名
typedef IntList =  List<int>;
// 泛型起别名
typedef Mapper<X> =  Map<String,X>;
// 函数别名
typedef FnProcess = num Function(num x, num y);

FnProcess GetFn() {
  /**
   *
   *  闭包写法。
   *
   * */
  return (num x,num y)  {
      return x+y;
  };
}

void main(List<String> args) {
  // print(args);
  /**
   *
   *  需要避免在生产代码中使用print.
   * */
  IntList il = <int>[1,2,3];
  for (final element in il) {
    print("the element is $element");
  }
  FnProcess process = GetFn();
  print("the current value is ${process(10,12)}");
}