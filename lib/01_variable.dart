late String g1;
class Point {
    double x;
    double y;
    Point(this.x,this.y);
}
void main() {
  /**
  *
  * 普通的变量
  *
  *
  *
  **/
  //  integer 整型
  int integer = 1;
  //  double 浮点型
  double fl = 1.0;
  //  String 类型
  String text = '''
  this is string text.
  the integer is $integer. 
  the double is $fl.
  ''';

  /**
   *
   *   声明一个为null的变量。
   *
   *
   *
   * */

  int? intNull; // 此处的intNull 就是一个null型的变量。

  // 整型
  print(integer);
  // 浮点数
  print(fl);
  // 文本
  print(text);
  /**
   *  默认值null变量。
   *
   *
   */

  int? lineCount; //  lineCount is null.

  /**
   *  late 类型的变量。
   *  该标识的作用是，当在使用这个变量时，确定这个变量已经在其他地方被初始化了。
   *  那么，此时可以将这个变量标识为late，用于避开DART，在编译期间的错误检查。
   *  g1是在main函数之外定义的函数，为了能够确保该变量在其他地方可以使用。所以，将其设置为late。
   *  如果，g1的赋值是一个函数。该函数会在g1变量第一次被使用时，进行初始化。
   *
   *
   */

  g1 = "haha";

  /**
   *
   *  const 为编译时常量，即字符串，数字，列表(不可变，也就是无法进行增加以及删除)等类型。
   *  final 只能被设置一次，且不能再次被赋值。该修饰符一般用于修饰对象。
   *  对象本身无法修改，但是对象的值是可以修改的。
   *  final O1 = new Point(1,2);
   *  O1 = new Point(4,5); // 该语句是会出错的。
   *  O1.x = 2; // 正确
   *  此处需要注意的是，在实例化对象时，可以不写new这个修饰符。
   */
  const a = 'hello';
  // a = 'world';  // 该语句是会报错的
  final p1 =  Point(1,2);
  // p1 = new Point(2,4); // 该语句时会报错的
  p1.x = 2;

  print('常量a是$a,常量p是{${p1.x},${p1.y}');
  /**
   *
   *
   * 类型检查以及类型转换
   *
   *  is 用于类型检查。as 用于类型转换。
   *
   *
   * */

   if(p1 is Point) {
      print('p1‘s type is point');
   }
   dynamic number = 15;

   if (number is int) {
      print("number's type is int. and it's $number");
   } else if(number is double) {
     print("number's type is double. and it's $number");
   }
   /**
   *  下面的这种方式，倘若左侧要转换的类型和右侧本身代表的类型不符合，是会抛出异常的
   *  int intn = number as int;
       print("intn's has value ==> $intn  ");
    *  * 要解决这种异常的方式是用try catch.或者，先通过is进行判定。
   *
   *  dynamic number = 12.6;

   *    if (number is int) {
    *   } else if(number is double) {

    *   }
   * */
}


String getFinal() {

  return "h1";
}