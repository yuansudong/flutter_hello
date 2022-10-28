




class ProfileMark {
  final int x;
  final int y;
  /// 以{} 包起来的参数集合，可以被视作为命名构造函数参数
  const ProfileMark({required this.x, required this.y});
}

class Rectangle {
  double left, top, width, height;
  Rectangle(this.left, this.top, this.width, this.height);

  /// getter,setter 实例.它是计算属性

  double get right => left + width;
  set right(double value) => left = value - width;

  /// getter,setter 实例.它是计算属性
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}





// Point
class Point {
  int? x;  //  声明成员变量x，初始化为0
  int? y;  //  声明成员变量y,初始化为0
  int? z; //  声明成员变量z,初始化为null


  double get rake  => x!/y!;


  // 终值初始化的方式
  Point(int x1, int y1, int z1){
    x = x1;
    y = y1;
    z = z1;
  }


  Point.alias(int xOrigin):this.unnamed(xOrigin,0,0);

  // 命名式构造函数
  Point.unnamed(
      int xOrigin ,
      int yOrigin,
      int zOrigin):x=xOrigin,y=yOrigin,z=zOrigin; // 这种初始化的方式，被称之为构造初始化列表。
  Point.fromJson(Map<String,Object> Data) {
    x= Data['x'] as int; // 强转，可能发生异常
    y= Data['y'] as int;
    z= Data['z'] as int;
    print("in person");
  }



  String describe() {
    return   '$x,$y,$z';
  }

  /// 如果重写 == 操作符，必须同时重写对象 hashCode 的 Getter 方法。
  /// 你可以查阅 实现映射键 获取更多关于重写的 == 和 hashCode 的例子。

  /// 重载运算符+号。
  Point operator + (Point other)  {
    int x1 =  (x ?? 0) + (other.x??0 );
    int y1 =  (y ?? 0) + (other.x??0 );
    int z1 =  (z ?? 0) + (other.z??0 );
    return Point(x1,y1,z1);
  }
  /// 重载运算符-号。
  Point operator - (Point other)  {
    int x1 =  (x ?? 0) - (other.x??0 );
    int y1 =  (y ?? 0) - (other.x??0 );
    int z1 =  (z ?? 0) - (other.z??0 );
    return Point(x1,y1,z1);
  }
  /**
   *
   *  后面可以依次类推。
   *
   * */
}






class Logger {
  final String name;
  int? value;
  static final _pool = <String,Logger>{};
  factory Logger(String name) {
    // putIfAbsent 存在则返回，不存在则添加，并返回添加过后的值。
    return _pool.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String,Object> data) {
    String key =  data['name'].toString();
    return _pool.putIfAbsent(key, () => Logger._internal(key));
  }
  

  Logger._internal(this.name);

  /// describe 是成员方法
  void describe() {
    print("the logger current value is ${value}");
  }

}



class Static {


  static const String  _text = "static text";


  static void say() {
    print("the text is $_text in static class");
  }

}



void main() {

  /**
   *
   *  在类中，以_开头的成员，代表是私有的。
   *
   * */

  /**
   *
   *
   *  常量构造函数，对于构造参数一致的构造表达式。
   *  其构造的对象是同一个对象，它们的hashcode是相同的。下面是一个例子
   *  在类的构造函数前加上 const 关键字并确保所有实例变量均为 final 来实现该功能。
   *
   * */
  ProfileMark pm1 =  const ProfileMark(x:10, y:10);
  ProfileMark pm2 =  const ProfileMark(x:10, y:10);
  ProfileMark pm3 =  const ProfileMark(x:10, y:20);
  print("pm1.hashCode is ${pm1.hashCode}");
  print("pm2.hashCode is ${pm2.hashCode}");
  print("pm3.hashCode is ${pm3.hashCode}");
  if (pm1 == pm2) {
    print("pm1 == pm2");
  }

  /**
   *
   *  命名式构造函数，其用途用于给构造函数标明用途。
   *  最终目的是达到多用途的目的。
   *  比如 Point.fromJson(),Point.fromPB(),
   *
   * */
  Point p1 =  Point.unnamed(10, 20, 30);
  print("the text is ${p1.x},${p1.y},${p1.z}");

  /**
   *
   * 重定向构造函数，是命名构造函数调用其他构造函数
   *
   *
   * */
  Point p3 =  Point.alias(120);
  print("${p3.x},${p3.y},${p3.z}");
  print("==========================> ${(p1-p3).describe()}");
  /**
   *
   *  工厂构造函数，使用 factory 关键字标识类的构造函数将会令该构造函数变为工厂构造函数，这将意味着使用该构造函数构造类的实例时并非总是会返回新的实例对象
   *  该方式可以用作对象池。
   *
   *  factory 的内部是不能使用this关键字
   *   tip-1: 静态成员变量，是每个实例所共有的。
   *   tip-2: 只要传入的标识相同，那么返回的对象就是相同的。
   *   tip-3: 只有对象不同，才会返回一个新的对象。
   * */
  String key = "one";
  Logger logger1 =  Logger(key);
  logger1.value = 123456;
  logger1.describe();
  print("logger1的值是${logger1.value}");
  Logger logger2 = Logger(key);
  print("logger2的值是${logger2.value}");

  logger2.describe();


  /**
   *
   *  计算属性，就是类中成员变量的改变。会导致计算属性改变
   *
   * */
  Rectangle rect =  Rectangle(0, 0, 50, 50);
  print("the current rect right is ${rect.right}. rect bottom is ${rect.bottom}");
  rect.height = 100;
  print("the current rect right is ${rect.right}. rect bottom is ${rect.bottom}");


  /**
   *  使用静态成员函数可以不对类进行初始化。
   *  静态成员变量和静态成员方法是所有类实例所共用的。因此，在
   *  静态变量（即类变量）常用于声明类范围内所属的状态变量和常量
   *  静态方法（即类方法）不能对实例进行操作，因此不能使用 this。
   *  但是他们可以访问静态变量
   *
   *
   * */

  Static.say();

}
