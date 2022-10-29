

import 'dart:collection';

void main() {

  /**
   *
   *   SplayTree 对于存储的元素，需要实现comparable.compareTo方法。
   *
   * */
  final planets = SplayTreeSet<String>((a, b) => a.compareTo(b));


  /// model-1: 增加

  planets.add('Neptune');
  planets.addAll({'Venus', 'Mars', 'Earth', 'Jupiter'});
  print(planets); // {Earth, Jupiter, Mars, Neptune, Venus}

  /// model-2: 检查是否为空
  print("${planets.isEmpty}");
  print("${planets.length}");

  /// model-3: 检查集合中是否包含相应的元素
  print("${planets.contains('Mars')}");

  /// model-4: 根据元素的下标，返回相应的元素
  final elementAt = planets.elementAt(1);
  print(elementAt); // Jupiter

  /// model-5: 返回一个集合的拷贝
  final copySet = planets.toSet(); // a `SplayTreeSet` with the same ordering.
  print(copySet); // {Earth, Jupiter, Mars, Neptune, Venus}

  /// 根据提供的key，在集合中进行删除
  final removedValue = planets.remove('Mars'); // true
  print(planets); // {Earth, Jupiter, Neptune, Venus}

  /// 根据指定的条件，倘若表达式为true，在集合中进行删除
  planets.removeWhere((element) => element.startsWith('J'));
  print(planets); // {Earth, Neptune, Venus}

  /// 保留表达式为true的元素
  planets.retainWhere((element) => element.contains('Earth'));
  print(planets); // {Earth}
  /// 清空集合。
  planets.clear();
  print(planets.isEmpty); // true
  print(planets); // {}
}