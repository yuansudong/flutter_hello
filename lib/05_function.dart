






// normalFunction 正常函数
int normalFunction(int x, int y) {
  return x + y;
}

int arrowFunction(int x,int y) => x+y;


int anonymousFunction() {
  List<int> li = const <int>[1,2,3,4,5,6];
  // (value,element) => value+element 就是一个匿名函数
  return li.reduce((value, element) => value+element);
}



int Function(int,int) closureFunction() {
  /**
   *
   * 闭包函数，将函数作为对象返回进行调用。使该函数对象超出原有作用域，且又能使用原作用域内的变量和常量
   * 比如，下方的text.
   *
   *
   * */
  const text = "this is text";
  return (int x, int y) {
    print(text);
    return x+y;
  };
}




void argumentFunction(
    String from, // from 来自于哪里
    String to,   // to 到哪里
    [
      String? dest, // 命名参数，默认为null。
      bool flood = false, // 命名参数，默认参数。
      String text = "", // 命名参数，默认参数。
    ] //[] 内为可选参数。
    ) {
  if (flood) {
    print("the flood is true");
  }
  if (text.isEmpty) {
    print("the text is empty");
  }
  if (dest == null) {
    print("the dest is null");
  }
  print("the xiaoming from $from to $to");
}




// 这里就是主函数

void main() {

  argumentFunction("ChengDu", "ShangHai");
  /**
   *
   * 函数类型：
   *        type-1: 常规函数
   *            返回值 函数名（函数参数）{
   *              函数体
   *
   *              return 函数返回值。
   *            }
   *            tip-1: 所有的函数都有返回值。没有显示调用return语句的函数，默认是return null.
   *
   *        type-2: 箭头函数
   *            箭头函数是常规函数的缩写。
   *            返回值 函数名(函数参数) => 函数参数变换。
   *            等价于：
   *            返回值 函数名(函数参数) { return 函数参数变换 }
   *            int FnHa(int x) => x;
                // 上面的函数等价于下面的函数
                int FnHa1(int x) {
                    return x;
                }
               // 所以， => 可以看做是{ return } 的缩写
   *
   *        type-3: 入口函数
   *             main 函数，是程序的主入口函数。所有程序的起点都来自于这里
   *        type-4: 匿名函数
   *             匿名函数，就是没有函数名的函数。这类函数，通常作为参数传入另外一个函数体进行调用
   *             example:
   *                // 其中 (element) => print("the element is $element") 就是一个匿名函数
   *                list.forEach((element)=> print("the element is $element"));
   *        type-5: 闭包函数
   *             闭包函数，是一个函数对象。它可以使函数在原始作用域之外，使用原始作用域内的变量。
   *             example:
   *               typedef FnProcess = int Function(int x,int y);
   *               FnProcess ProcessHandle(Rule rule) {
   *
   *                    return (int x,int y) {
   *                      return x+y;
   *                    };
   *               }
   *               // 在主函数中，可以进行如下使用：
   *               FnProcess fn = ProcessHandle(Rule());
   *               print("the fn's result is ${fn(10,20)}");
   *
   * */



  /**
   *
   *  函数参数，分为命名参数，可选参数，必须参数，默认参数。
   *
   * */



}