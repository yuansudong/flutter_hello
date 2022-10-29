

import 'dart:collection';

void main() {
  /**
   *
   *   UnmodifiableSetView 创建一个集合视图，可以查看，但是不能修改和删除，否则，会抛出异常。
   *
   *
   *
   * */
  final baseSet = <String>{'Mars', 'Mercury', 'Earth', 'Venus'};
  final unmodifiableSetView = UnmodifiableSetView(baseSet);
  // Remove an element from the original set.
  baseSet.remove('Venus');
  print(unmodifiableSetView); // {Mars, Mercury, Earth}
  unmodifiableSetView.remove('Earth'); // Throws.
}