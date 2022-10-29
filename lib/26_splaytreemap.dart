

import 'dart:collection';

void main() {

  /**
   *    https://api.dart.cn/stable/2.18.3/dart-collection/SplayTreeMap-class.html
   *    基于平衡二叉树构建的有序字典类型
   *
   * */

  final treemap =   SplayTreeMap<int,String>();

  /// model-1: 添加数据
  treemap[1] = 'one';
  treemap.addAll(<int,String>{2:"two",3:"three",4:"four",5:"five"});
  treemap.addEntries(<int,String>{6:"six",7:"seven",8:"eight",9:"night"}.entries);
  /// 存在则返回，不存在则创建后返回。
  treemap.putIfAbsent(10, () => "ten");

  /// model-2: 更新数据
  treemap[1] = "one_update";
  /// 存在则更新，不存在会执行创建操作
  treemap.update(1, (value) => "one_update_update",ifAbsent: ()=>"one_create");
  /// 遍历所有键值对，根据返回的值更新与key对应的值。
  treemap.updateAll((key, value) => value*2);

  /// model-3: 查询数据
  /// 如果key值不存在，会返回null.
  print("the current query的数据是，${treemap[28]}");
  print("在treemap中,是否包含着键50, ${treemap.containsKey(50)}");
  print("在treemap中,是否包含着值50_update, ${treemap.containsValue('50_update')}");

  /// model-4: 删除数据
  /// 根据指定的键，在treemap中删除与key对应的键值对。
  treemap.remove(28);
  /// 根据条件,在treemap中删除与key对应的键值对。
  treemap.removeWhere((key, value) => key==6);


  /// final switchmap = treemap.cast<double,String>(); 强制类型转换。

  /// model-5: key值查找

  print("treemap中第一个key是,${treemap.firstKey()}");
  print("treemap中7之后的第一个key是, ${treemap.firstKeyAfter(7)}");
  print("treemap中最后一个key是, ${treemap.lastKey()}");
  print("treemap中7前面的第一个key是, ${treemap.lastKeyBefore(7)}");



  /// model-6: 属性

  // treemap.entries 键值对
  // treemap.keys  返回一个由key组成的迭代器
  // treemap.isNotEmpty 如果treemap不为空，则返回true
  // treemap.isEmpty  如果treemap为空，则返回true
  // treemap.length  treemap键值对的个数
  // treemap.values 返回一个由value组成的迭代器
  // treemap.hashCode
  // treemap.runtimeType

  
}
