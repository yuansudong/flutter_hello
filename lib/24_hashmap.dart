

import 'dart:collection';

void main() {


  /**
   *
   *  tip-1: hashmap的遍历是无序的。
   *
   * */


  final Map<String,int> hashmap = HashMap();
  hashmap.addAll(<String,int>{"one":1,"two":2,"three":3});
  /// hashmap.length 长度

  /// hashmap.entries 返回一个键值对集合
  /// hashmap.values 返回hashmap中，所有值的列表
  /// hashmap.isEmpty 如果hashmap中不为空，则返回true.
  /// hashmap.isNotEmpty 如果hashmap中不为空，则返回true
  /// hashmap.keys 返回hashmap中，所有键的列表

  hashmap.addEntries(<String,int>{"four":4,"five":5,"six":6}.entries);
  print("the current's value is ${hashmap["two"]}");
  hashmap.putIfAbsent("seven", () => 7);

  /// 遍历hashmap中的所有key,可以根据key，返回新值。
  hashmap.updateAll((key, value) => value*10);
  hashmap.update("eight", (value) => 10,ifAbsent: () => 8);
  print("hashmap的值中是否包含着10, ${hashmap.containsValue(8)}");
  print("hashmap的键中是否包含着five, ${hashmap.containsKey("five")}");

  /// hashmap.clear(); // 用于清空hashmap.

  /// 以hashmap中的key,value作为输入参数，构建一个新的Map进行返回。
  print("***********************************");
  hashmap.map((key, value) => MapEntry(key*2, value*10)).forEach((key, value) {
    print("key:$key,value:$value");
  });
  /// hashmap.cast<int,String>(); 强制类型转换，将hashmap转换成其他类型。
  hashmap.remove("eight");
  hashmap.removeWhere((key, value) => value>=40);

  print("************************************");
  hashmap.forEach((key, value) {
    print("key:$key,value:$value");
  });




}