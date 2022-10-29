

import 'dart:collection';

void main() {



  /**
   *
   *   LinkedHashSet 根据插入顺序进行遍历的集合
   *
   * */

  LinkedHashSet<String> normalSet = LinkedHashSet<String>();
  LinkedHashSet<String> appendSet = LinkedHashSet<String>(); // {'six','eight','nine','ten'};
  print("=================> ${normalSet.union(appendSet)}");
  normalSet.add('seven');
  normalSet.addAll(<String>{'one','two','three','four','five','six'});
  appendSet.addAll(<String>{'six','eight','nine','ten'});
  for (final element in normalSet) {
    print("normal-set:the current element is $element");
  }
  // noChangeSet.iterator            集合迭代器
  // noChangeSet.length              集合长度
  // noChangeSet.last                集合最后一个元素
  // noChangeSet.single              如果集合只有一个元素，那么就返回这个元素。否则，抛出异常
  // noChangeSet.isNotEmpty          检查这个集合是不是不为空
  // noChangeSet.isEmpty             检查这个集合是不是为空
  // noChangeSet.first               获取这个集合的首元素
  // noChangeSet.hashCode            获取hash码
  // noChangeSet.runtimeType         获取运行时类型
  // noChangeSet.addAll(elements)    向目标集合中添加一个集合
  // noChangeSet.add(value)          向目标集合中添加一个值
  // noChangeSet.forEach((element) { }) 遍历目标集合中的所有元素。但是，IDEA中提示，要避免使用该方法
  // noChangeSet.map((e) => null)    遍历目标集合，根据返回元素，构建新集合。新集合会通过返回值进行返回。
  // noChangeSet.cast()              将目标集合进行类型转换
  // noChangeSet.clear()             清空目标集合
  // noChangeSet.difference(other)   求差集，设A，B是两个集合，则所有属于A且不属于B的元素构成的集合，叫做集合A与集合B的差集。
  // noChangeSet.union()             求并集
  // noChangeSet.intersection(other) 求交集
  // noChangeSet.contains(value)     判定目标集合中，是否包含value这个元素。
  // noChangeSet.toSet()             返回当前set的一个拷贝。
  // noChangeSet.containsAll(other)  判定other是否是目标集合的子元素。
  // noChangeSet.every((element) => element>5) 倘若目标集合中的所有元素都大于5，那么返回true.否则返回false.
  // noChangeSet.fold(initValue, (previousValue, element) => previousValue+element) 该函数的作用是,基于一个初始值，将集合中的所有元素合并成一个元素，
  // previousValue是除了当前元素之外，前面元素的一个集合。具体可以看代码中的注释。
  // noChangeSet.any((element) => element > 5)  目标集合中，只有一个元素大于5则返回true。否则，返回false.
  // noChangeSet.join(",") 将集合中的所有元素合并成一个以逗号为分隔符的字符串。
  // var numbers = [1, 3, 0, 2];
  // print('expand的结果集是:${numbers.expand(count)}');
  // noChangeSet.expand((element) => null); expand的含义是，接受一个迭代器，
  // 并将目标集合中的所有元素依次传入这个迭代器，通过yield返回新的元素集合。目标集合相当于是一个种子，迭代器根据种子，迭代出更多的元素。
  // 此处的迭代器相当于制定了一个新元素产出的规则。
  // noChangeSet.elementAt(1) 根据元素所在的位置（从0开始，不是erlang那种从1开始），返回元素。
  // noChangeSet.firstWhere((element) => element < 5) 返回第一个小于5的元素。
  // noChangeSet.firstWhere((element) => element > 5) 返回第一个大于5的元素。
  // noChangeSet.lastWhere((element) => element < 5) 返回目标集合中，最后一个小于5的元素。
  // noChangeSet.lastWhere((element) => element > 5) 返回目标集合中，最后一个大于5的元素。
  // noChangeSet.followedBy({10,11}).forEach((element) { print("the element is $element"); }); 在目标集合中，追加一组元素。并返回一个新的元素数组。
  // noChangeSet.lookup(object) 用于在目标集合中查找一个元素，倘若这个元素存在，则返回这个元素。否则返回NULL
  String result = normalSet.reduce((value, element) => value+element);
  // 将目标集合合并成单个元素。
  // 这单个元素取决于计算公式。其中value为前面集合元素计算之后的结果。
  print('the result is $result. the current set is $normalSet ');
  // bool result =  normalSet.remove('six'); // 从集合中移除指定元素，如果该元素存在则返回true.如果该元素不存在则返回false.
  print("the current set is $normalSet. the result is ${normalSet.remove('six')} ");
  normalSet.removeAll(<String>{'five','six','eleven'}); // 从集合中移除指定元素集合，没有返回值。
  print("the current set is $normalSet. ");
  print("the current set is ${normalSet.skip(2).toList()}"); // skip 用于跳过指定元素个数，并返回一个集合迭代器。
  // skipWhile 用于返回一个集合迭代器。该迭代器满足skipWhile中，其条件表达式第一次为false之后的元素。
  // 下面的含义是，noChangeSet这个集合，跳过不等于3的元素。一旦遇见元素等于3。那么，这个迭代器元素就会返回。
  print("the current set is $normalSet");
  var newSet = normalSet.skipWhile((value) {
    return value != "a";
  });
  print("the new set is $newSet end....!");
  // noChangeSet.toList() 用于将一个集合转换成列表。
  print("the list value is ${normalSet.toList()}");
  // noChangeSet.map() 用于构建一个新的集合。新集合的元素种子是旧集合输入的元素。
  print("the new set is ${normalSet.map((e) => e*2)} ");
  // normalSet.take 用于返回一个集合迭代器。该迭代器包含的集合元素个数是自初始元素起，n个元素的集合。这里的n指的是元素的个数
  print("the newset is ${normalSet.take(3)}");
  // ${normalSet.takeWhile((value) => value != 'five')} 用于返回一个集合迭代器。该迭代器包含的集合元素个数是自初始元素起，至第一个不满足条件的元素为止。
  print("the newset is ${normalSet.takeWhile((value) => value != 'five')}");
  // retain 有保存的含义，即保留目标集合与源集合中，具有相同元素的集合
  normalSet.retainAll(<String>{"two","five"});
  print("the newset is $normalSet" );
  // normalSet.removeWhere((element) => false) 移除表达式为true的元素。
  // normalSet.retainWhere((element) => false) 保留表达式为true的元素。
  // noChangeSet.singleWhere((element) => element > 5)} 剔除元素，保留表达式为true的元素。如果最终集合中，剩余的不止一个元素。则会触发异常
  print("the current is ${normalSet.singleWhere((element) => element != 'h')} ");
  // noChangeSet.where((element) => element > 3)} 过滤集合，保留表达式为true的元素
  print("the current is ${normalSet.where((element) => element != 'w')}" );

}