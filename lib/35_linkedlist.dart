import 'dart:collection';

class EntryItem extends LinkedListEntry<EntryItem> {
  final int id;
  final String text;
  EntryItem(this.id, this.text);

  @override
  String toString() {
    return '$id : $text';
  }
}

void main(){
  final linkedList = LinkedList<EntryItem>();
  linkedList.addAll(
      [EntryItem(1, 'A'), EntryItem(2, 'B'), EntryItem(3, 'C')]);
  print(linkedList.first); // 1 : A
  print(linkedList.last); // 3 : C

  /// model-1: 添加操作
  linkedList.first.insertAfter(EntryItem(15, 'E')); // 在首元素之后插入元素
  linkedList.last.insertBefore(EntryItem(10, 'D')); // 在尾元素之前插入元素
  /// 遍历元素条目.
  for (final entry in linkedList) {
    print(entry);
  }

  ///  删除操作.
  linkedList.elementAt(2).unlink(); // 删除元素为2的元素
  print(linkedList); // (1 : A, 15 : E, 10 : D, 3 : C)
  linkedList.first.unlink(); // 删除首元素
  print(linkedList); // (15 : E, 10 : D, 3 : C)
  linkedList.remove(linkedList.last);  // 删除尾元素
  print(linkedList); // (15 : E, 10 : D)
  linkedList.clear(); // 清空所有列表
  print(linkedList.length); // 0
  print(linkedList.isEmpty); // true
}