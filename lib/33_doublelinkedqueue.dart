

import 'dart:collection';

void main() {


  final DoubleLinkedQueue<int> queue =  DoubleLinkedQueue<int>();
  /// model-1: 添加元素
  queue.add(1);
  queue.addAll([2,3,4,5,6]);
  queue.addFirst(0);
  queue.addLast(7);
  print(queue);
  /// model-2: 删除元素
  queue.removeFirst();
  queue.removeLast();
  print(queue);



}