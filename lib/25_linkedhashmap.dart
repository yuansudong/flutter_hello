

import 'dart:collection';

void main() {

   /**
    *
    *   一个插入有序且查找时间恒定的字典类型
    *   tip-1: 其遍历顺序是根据插入顺序来的。
    * */
    final LinkedHashMap<int,String> dict = LinkedHashMap<int,String>();
    /// dict.keys 返回一个迭代器，该迭代器中包含着dict中的所有key.
    /// dict.values 返回一个迭代器，该迭代器中包含着dict中的所有value.
    /// dict.entries 返回一个迭代器，该迭代器中包含着dict中所有的键值对
    /// dict.length  返回map的长度
    /// dict.runtimeType 返回一个运行时的类型
    /// dict.hashCode 返回一个hash码
    /// dict.isEmpty  如果dict为空，则返回true
    /// dict.isNotEmpty 如果dict不为空，则返回true
    /// 通过map的形式进行添加
    dict.addAll(<int,String>{1:"one",2:"two",3:"three"});
    /// 通过键值对的形式进行添加
    dict.addEntries(<int,String>{4:"four",5:"five",6:"six"}.entries);
    /// 根据指定的key，在hashmap中进行删除。
    dict.remove(6);
    /// 根据指定的条件表达式，在hashmap中进行删除。
    dict.removeWhere((key, value) => key == 2);

    /// dict.cast() 类型转换 dict.cast<int,String>()
    dict.map((key, value) => MapEntry(key, value*2)).forEach((key, value) {
        print("new_key:$key,new_value:$value");
    });

    /// 清除整个hashmap
    dict.clear();
    /// 根据指定的key更新相应的值，如果key在dict中不存在，那么，就执行创建操作。
    dict.update(20, (value) => "20_update",ifAbsent: ()=> "20_create");
    dict.updateAll((key, value) => value*2);
    
    /// 存在则返回已有对象，不存在则进行创建，并返回
    dict.putIfAbsent(30, () => "30_create");
    print("dict的值中包含着six,${dict.containsValue('five')}");
    print("dict的键中包含着20,${dict.containsKey(20)}");
    dict.addAll(<int,String>{1:"one",2:"two",3:"three"});
    /// 遍历所有的键值对，该遍历是有序的。
    print("********************************");
    dict.forEach((key, value) {
      print("key $key,value $value");
    });
    print("********************************");
    dict.forEach((key, value) {
      print("key $key,value $value");
    });

    print("********************************");
  
}