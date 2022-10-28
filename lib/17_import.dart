

import 'package:flutter_hello/08_class.dart' as impl show Point  ;
import 'package:flutter_hello/tool/impl.dart' as tool ;
import 'package:flutter_hello/16_export.dart' deferred as exp ;
Future<void> main() async {


  /**
   *
   *   import 用于导入包，
   *   as 用于给import起别名，
   *   show 用于指定要导入包中的哪些类型
   *   hide 用于指定一个包中，哪些类型不被导入。不被指定的类型全部导入。
   *
   *   deferred as 关键字来标识需要延时加载的代码库.
   *   当实际需要使用到库中 API 时先调用 loadLibrary 函数加载库。
   *
   * */


  impl.Point p1 = impl.Point(10,20,30);
  tool.printHello();
  print(p1.describe());

  /// 使用延迟加载库中的函数时，需要先使用 loadLibrary
  ///
  await exp.loadLibrary();
  exp.greet();

}