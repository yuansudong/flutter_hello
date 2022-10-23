

late String g1;

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

  //

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
   *  常量
   *
   *
   */





}