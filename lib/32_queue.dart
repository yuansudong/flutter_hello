

import 'dart:collection';

void main() {
  final queue = Queue<int>(); // ListQueue() by default
  print(queue.runtimeType); // ListQueue

  /// queue.

  /// model-1: 向对列中增加元素
  queue.addAll([1, 2, 3]);
  queue.addFirst(0);   // 从首位置增加元素
  queue.addLast(10);   // 从尾位置增加元素



  /// model-2: 从队列中删除元素
  queue.removeFirst(); //  从头部删除元素并返回
  queue.removeLast();  //  从尾部删除元素并返回
  print(queue); // {1, 2, 3}

  /// 其余提供的接口，与前面一致。


}