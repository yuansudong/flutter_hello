



void main() {
  /**
   *
   *  内建（built in）类型.
   *   基础类型  int,double,bool,Rune,String,dynamic,symbol,Object.
   *   容器类型  list,set,map.
   *
   * */
  int integer = 1;
  double decimal = 12.5;
  bool bTrue = true;
  bool bFalse = false;
  // Rune类型，是一个UTF-16编码。是构建字符串的基础单位构建字符串。

  String hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');

  /// dynamic 是一个动态类型。什么类型的变量都可以赋值给它。
  ///
  ///
  dynamic a1 = "hello";

  if (a1 is String) {
    /// 进入这里之后，a1就可以被当做是字符串类型使用了。并不需要通过as进行显示转换。

  }

  if (a1 is double) {
    /// 进入这里之后，a1就可以被当做double类型使用了.并不需要通过as进行显示转换。
    ///

  }

  /**
   *
   * 表示 Dart 中声明的操作符或者标识符。
   * 你几乎不会需要 Symbol，但是它们对于那些通过名称引用标识符的 API 很有用，因为代码压缩后，
   * 尽管标识符的名称会改变，但是它们的 Symbol 会保持不变。
   * 获取标识符的代码格式就是在变量前添加#号。
   *
   * */

  print("a1's symbol is ${#a1}");


  /**
   *
   *
   * 在Dart中，任何类型都可以被称之为对象 Object.
   *
   * */
  Object a2 = "hello,world";
  print("a2's symbol is ${#a2}");
  if (a2 is String) {

  }


  /**
   *
   *
   * 容器类型: list.
   *
   *
   * */
  /// 不可修改的列表。 不可修改的列表需要用const进行修饰。
  /// 对于不可修改的列表，在执行添加操作时。在代码检查中，是不会检查出来的。
  /// 只有在运行时，会通过异常的方式暴露出来
  List<int> noChangeList = const [1,2,3,4,5];
  /// noChangeList.add(1); // 这段代码是会报异常的。
  noChangeList.forEach((element) { print("noChangeList element => $element"); });
  /// 列表扩展符，当需要对列表进行展开，可以使用(...)，对列表进行扩展。
  List<int> newList =  <int>[...noChangeList,7];
  newList.forEach((element) {print("newList element => $element"); });

  /// 基于if,for 构建列表。
  List<String> ifList = <String>[  for (int ele in newList) ele%2==0?'偶数:$ele':'奇数:$ele' ];
  ifList.forEach((element) { print("if-for-list:$element");});

  print("single的含义是什么,${ifList.last}");

  // ifList.addAll       添加一个列表.
  // ifList.add          添加单个元素.
  // ifList.length       长度.
  // ifList.reversed     反转列表.
  // ifList.hashCode     hash码.
  // ifList.runtimeType  运行时类型.
  // ifList.first        第一个元素.
  // ifList.isEmpty      列表是否为空.
  // ifList.isNotEmpty   列表是否不为空.
  // ifList.iterator     返回列表的迭代器.
  // ifList.last         返回列表的最后一个元素.
  // ifList.single       检查这个列表是否是仅有单个元素，倘若不是，会抛出异常.



 /**
  *
  * set，用于概括一组元素的集合。且这些元素之间不能冲突（重样）。
  *
  *
  * */
  Set<int> noChangeSet = const <int>{1,2,3,4,5,6}; // 不可改变的集合。
  
  /// tip: 如果明确ele是只读类型，应该给予final标识。
  for (int ele in noChangeSet) {
     /// print the value of noChangeSet's element.
     print("noChangeSet's element is $ele");
  }
  
  /// tip: 
  
  Set<String> normalSet = <String>{'one','two','three','four','five','six'};
  Set<String> appendSet = <String>{'six','eight','nine','ten'};
  print("=================> ${normalSet.union(appendSet)}");
  normalSet.add('seven');
  normalSet.addAll(appendSet);
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

  noChangeSet.reduce((value, element) => null)
}

 Iterable<int> count(int n) sync* {
   print("当前元素的值是:$n");
   for (var i = 1; i <= n; i++) {
     yield i;
   }
 }