


class Point {
   int x;
   int y;
   Point(this.x,this.y);
}


late String g1;


void main() {

  /**
   *
   * 运算符：
   *      算术运算符
   *      关系运算符
   *      类型判断运算符
   *      赋值运算符
   *      位运算符
   *      条件表达式
   *      级联运算符
   *      其他运算符
   *
   *
   * */


  /**
   *
   *  算术运算符:
   *  +       加法运算符
   *  -       减法运算符
   *  -1      一元负运算符
   *  *       乘法运算符
   *  /       除法运算符
   *  ~/      除并取整运算符
   *  %       余数运算符
   * */
   num a = 100;
   num b = 12;
   print("a + b = ${a+b}");   // 加法
   print("a - b = ${a-b}");   // 减法
   print("-a = ${-a}");       // 取反
   print("a * b = ${a*b}");   // 乘法
   print("a / b = ${a/b}");   // 除法
   print("a ~/ b = ${a~/b}"); // 除并取整
   print("a % b = ${a%b}");   // 余数

  /**
   *
   *  关系运算符.不等，等于，大于，小于，大于等于，小于等于。
   *
   * */
   print ( "a != b ${a != b}"); //  不等
   print ("a == b ${a == b}");  // 等于
   print ("a > b ${a > b}");  //  大于
   print ("a < b ${a < b}");  //  小于
   print ("a >= b ${a >= b}"); //  大于等于
   print ("a <= b ${a <= b}"); // 小于等于

  /**
   *
   *  类型判断运算符:
   *              as 类型转换,倘若不是指定的类型会引发异常.
   *              is 如果对象是指定类型,则会返回true.
   *              is! 如果对象不是指定类型,则会返回true.
   * */

  dynamic dy1 = 12.5;
  double dou1 = dy1 as double;

  print("dou1's is ${dou1}");

  if(dy1 is num) {
    print("dy1's abs is ${dy1.abs()}");
  }
  if (dy1 is! String) {
    print("this isn't String");
  }

  /**
   *
   *   赋值运算符，分为两种，一种是=，一种是？？=。
   *   =是普通赋值运算符，就是将右值赋值给左值。
   *   ??= 如果左值是NULL，那么就将右值赋值给左值。否则，什么都不做。
   *
   * */

   int? a1;
   int? b1;

   int c1 = 1;

   a1 = c1;
   b1 ??=c1;
   print("a1 ${a1}, b1 ${b1}"); // a1,b1 都会发生赋值操作
   a1 = 10;
   b1 ??=10;
   print("a1 ${a1}, b1 ${b1}"); //  a1会发生赋值操作。b1不会发生赋值操作。


  /**
   *
   *  逻辑运算符，逻辑运算符分为取反(!)，逻辑或(||)，逻辑与(&&)
   *
   *  逻辑运算符一般对于bool表达式。
   *
   * */

  bool bo1 = true;
  bool bo2 = false;

  if (!bo2) {
    // bo2 取反 为true，会进入这里。
    print("bo2 取反为true.会执行本分支");
  }

  if (!(bo1 && bo2)) {
    /// bo1 && bo2  true && false 为false，取反为true.
    /// 这个代码会执行到这里
    print("bo1 && bo2  true && false 为false，取反为true.会执行本分支");
  }

  if (bo1 || bo2) {
    /// bo1 || bo2 等价于 true || false 为true.会执行该分支。
    print("bo1 || bo2 为true,会执行该分支");
  }


  /**
   *
   *  条件表达式:
   *        三目运算符: expression ? 表达式1:表达式2
   *        二目运算符: expression ?? 表达式2
   * */

  String text =  1 > 2 ? "hello": "world";
  String? to; // to此时是null.
  String text1 = to ?? "world"; // to是null，会赋值world给text
    print("first:the text is $text1");
  text1 = text1 ?? "hello"; //  text1不是null，不会将hello赋值text1
   print("second:the text is $text1");

   /**
    *
    *  .. 为级联运算符。在进行实例化时，可以通过该运算符对类中的成员变量进行赋值。
    *  ..? 级联运算符。倘若对象是可能为空的。需要通过级联操作，可以通过该运算符进行赋值。
    *  否则，代码编译不过。
    * */

   Point p1 = Point(10, 10)
     ..x=11
     ..y=12;
   print("p1.x ${p1.x}. p1.y ${p1.y} ");
   Point? p2;
   p2
     ?..x=10
     ..y=14;

   print("p2.x ${p2?.x} p2.y ${p2?.y}");


   /**
    *
    *  () 方法调用
    *  [] 访问list
    *  ？[] 判空访问
    *  . 访问成员。
    *  ？. 条件访问成员 。一般在类时，其对象可能为null时，需要访问其成员时，需要使用该操作符
    *  ！ 空断言操作。使用方式是x!。如果x是null，则会触发异常
    * */




}