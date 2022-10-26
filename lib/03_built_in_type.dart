



void main() {
  /**
   *
   *  内建（built in）类型.
   *   基础类型  int,double,bool,Rune,String,dynamic,symbol,Object.
   *   容器类型  list,set,map.
   *
   * */
  int integer = 1;
  double decimal = 12.5;
  bool bTrue = true;
  bool bFalse = false;
  // Rune类型，是一个UTF-16编码。是构建字符串的基础单位构建字符串。

  String hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');

  /// dynamic 是一个动态类型。什么类型的变量都可以赋值给它。
  ///
  ///
  dynamic a1 = "hello";

  if (a1 is String) {
    /// 进入这里之后，a1就可以被当做是字符串类型使用了。并不需要通过as进行显示转换。

  }

  if (a1 is double) {
    /// 进入这里之后，a1就可以被当做double类型使用了.并不需要通过as进行显示转换。
    ///

  }

  /**
   *
   * 表示 Dart 中声明的操作符或者标识符。
   * 你几乎不会需要 Symbol，但是它们对于那些通过名称引用标识符的 API 很有用，因为代码压缩后，
   * 尽管标识符的名称会改变，但是它们的 Symbol 会保持不变。
   * 获取标识符的代码格式就是在变量前添加#号。
   *
   * */

  print("a1's symbol is ${#a1}");


  /**
   *
   *
   * 在Dart中，任何类型都可以被称之为对象 Object.
   *
   * */
  Object a2 = "hello,world";
  print("a2's symbol is ${#a2}");
  if (a2 is String) {

  }




}