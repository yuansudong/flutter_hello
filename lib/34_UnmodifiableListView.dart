
import 'dart:collection';

void main() {

  /**
   *  UnmodifiableListView 返回一个list的视图，该视图只能看不能修改。
   *
   * */

  final numbers =  <int>[10,20,30];
  final listView =  UnmodifiableListView(numbers);
  numbers.addAll([40,50]);

  print(listView);

  /// tip:  对视图的 删除操作会引发异常。
  listView.remove(20);

}