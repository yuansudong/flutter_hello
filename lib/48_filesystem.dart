import 'dart:async';
import 'dart:io';

Future<void> main() async {

  const filename = "/home/yuansudong/file.txt";
  /// 读取数据
  File(filename).readAsString().then((String contents) {
      print(contents);
  });
  File(filename).writeAsString("这是一个新的数据\n").then((value) => print("value是$value"));
  await Future.delayed(const Duration(seconds: 5));

  File(filename).renameSync("255.txt");
}