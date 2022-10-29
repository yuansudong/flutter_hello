



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
  // noChangeSet.toSet()             返回当前set的一个拷贝。
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
  // int result = noChangeSet.reduce((value, element) => value-element);
  // 将目标集合合并成单个元素。
  // 这单个元素取决于计算公式。其中value为前面集合元素计算之后的结果。
  // print('the result is $result. the current set is $noChangeSet ');
  // bool result =  normalSet.remove('six'); // 从集合中移除指定元素，如果该元素存在则返回true.如果该元素不存在则返回false.
  // print("the current set is $normalSet. the result is $result ");
  // normalSet.removeAll(<String>{'five','six','eleven'}); // 从集合中移除指定元素集合，没有返回值。
  // print("the current set is $normalSet. ");
  // print("the current set is ${normalSet.skip(2).toList()}"); // skip 用于跳过指定元素个数，并返回一个集合迭代器。
  // skipWhile 用于返回一个集合迭代器。该迭代器满足skipWhile中，其条件表达式第一次为false之后的元素。
  // 下面的含义是，noChangeSet这个集合，跳过不等于3的元素。一旦遇见元素等于3。那么，这个迭代器元素就会返回。
  // print("the current set is $noChangeSet");
  // var newSet = noChangeSet.skipWhile((value) {
  //
  //   return value != 3;
  // });
  // print("the new set is $newSet end....!");
  // noChangeSet.toList() 用于将一个集合转换成列表。
  // print("the list value is ${noChangeSet.toList()}");
  // noChangeSet.map() 用于构建一个新的集合。新集合的元素种子是旧集合输入的元素。
  // print("the new set is ${noChangeSet.map((e) => e*e)} ");
  // normalSet.take 用于返回一个集合迭代器。该迭代器包含的集合元素个数是自初始元素起，n个元素的集合。这里的n指的是元素的个数
  // print("the newset is ${normalSet.take(3)}");
  // ${normalSet.takeWhile((value) => value != 'five')} 用于返回一个集合迭代器。该迭代器包含的集合元素个数是自初始元素起，至第一个不满足条件的元素为止。
  // print("the newset is ${normalSet.takeWhile((value) => value != 'five')}");
  // retain 有保存的含义，即保留目标集合与源集合中，具有相同元素的集合
  // normalSet.retainAll(<String>{"two","five"});
  // print("the newset is ${normalSet}" );
  // normalSet.removeWhere((element) => false) 移除表达式为true的元素。
  // normalSet.retainWhere((element) => false) 保留表达式为true的元素。
  // noChangeSet.singleWhere((element) => element > 5)} 剔除元素，保留表达式为true的元素。如果最终集合中，剩余的不止一个元素。则会触发异常
  // print("the current is ${noChangeSet.singleWhere((element) => element > 5)} ");
  // noChangeSet.where((element) => element > 3)} 过滤集合，保留表达式为true的元素
  // print("the current is ${noChangeSet.where((element) => element > 3)}" );



  /**
   *
   *  map,字典类型。
   *
   * */
   Map<int,String> dict = <int,String>{1:"one",2:"two",3:"three"};
   Map<int,String> dict1 = <int,String>{1:"11111"};
   dict.forEach((key, value) { print("the current key $key,the current value $value");});
   dict.forEach((key, value) { print("the current key $key,the current value $value");});

  /**
   *
   * 除了上述遍历方式之外，还有一种遍历字典集合的方式。该方式如下：
   *   /// for (final item in otherDiameters.entries) {
   *   ///   diameters.putIfAbsent(item.key, () => item.value);
   *   /// }
   */


   // dict.addAll 用于将两个字典类型合并，倘若源字典集合和目标集合中具有相同的key。
   // 那么，源字典集合中的值会替代目标集合中的值。
   // dict.addAll(dict1);

   // print("the current dict struct is $dict");
   // dict.isEmpty 判定字典集合是否为空
   // dict.isNotEmpty 判定字典集合是否不为空
   // dict.length 获取字典集合的长度
   // dict.entries 获取字典集合中的键值对
   // dict.keys 返回字典集合中key的集合
   // dict.values 返回字典集合中value的集合
   // dict.runtimeType 返回运行时类型
   // dict.forEach((key, value) { }) 对集合进行迭代
   // dict.removeWhere((key, value) => key > 2); 移除表达式为true的元素。
   // dict.remove(2); 移除key值为2的键值对
   // dict.map 基于源字典，构建新的字典集合。
   // 其中map的返回值是一个MapEntry的构建类型,其中字符串乘以数字，代表复制几次。
   // print("the current is ${dict.map((key, value) => MapEntry(key, value*2))}");
   // dict.clear() 将集合清空
   // dict.addEntries(newEntries) 用于添加一个键值对集合。倘若源键值对和目标键值对中存在着相同的key.
   // 那么，源键值对中的值会替换掉目标键值对中的值。
   // dict.addEntries(dict1.entries);
   // print("the current dict is $dict");
   // dict.containsKey(key) 检测字典集合中是否包含着key，如果包含着key则返回true.如果不包含key则返回false.
   // dict.containsValue(value) 检测字典集合中是否包含着value,如果包含着value则返回true.如果不包含value则返回false.
   // dict.putIfAbsent(10, () => "h1h1h1"); 该函数的用途是，检查这个key，是否存在字典集合中。
   // 如果存在则什么都不做。如果不存在，则以键值对的方式，将key与value加入目标集合中
   // dict.putIfAbsent(10, () => "h1h1h1");
   // print("the current dict is $dict");
   // dict.putIfAbsent(10, () => "h2");
   // print("the current dict is $dict");
   // dict.update 用于在字典集合中更新一个key的值。倘若该key存在字典集合中，那么就执行更新操作。
   // 倘若该key不存在字典集合中，那么就执行创建操作。
   // 该函数有三个参数，第一个参数为key，第二个参数为更新参数，其值为字典集合中与key对应的旧值，其返回值为要更新的值。
   // 第三个参数为创建参数，其返回值为要赋予的初始值。
    // dict.update(10, (value) {
    //   print("first-update:the current value is $value");
    //   return "25";
    // },ifAbsent: (){
    //   print("first-create:.....");
    //   return "55";
    // });
    // print("the current dict is $dict");
    // dict.update(10, (value) {
    //   print("second-update:the current value is $value");
    //   return "98";
    // },ifAbsent: (){
    //   print("second-create:.....");
    //   return "55";
    // });
    // print("the current dict is $dict");
    // updateAll 用于遍历一个字典集合中的所有键值对，用返回值作为相应key值的新值。
    // dict.updateAll((key, value) => value.toUpperCase());

    





}

 Iterable<int> count(int n) sync* {
   print("当前元素的值是:$n");
   for (var i = 1; i <= n; i++) {
     yield i;
   }
 }