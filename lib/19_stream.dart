


/// asyncDataStream 异步数据流
Stream<int> asyncDataStream() async* {
  int index = 0;
  while(index < 50) {
    yield index++;
  }
}



Future<void> main()  async {

  /**
   *
   * 异步流，用于接收或者输入一连串的数据。由很多个异步操作构成。类似于一个异步的数据管道。
   * 要实现一个 async stream，需要使用async关键字和一个异步循环（使用await for） 关键字标识。
   *
   * 生成Stream(异步生成器):
   *
   *
   *
   *
   * 处理Stream:
   *  await for 用于接收一个Stream数据流   其表达式如下：
   *       await for (varOrType identifier in expression) {
                // Executes each time the stream emits a value.
           }
   *  表达式的类型必须是Stream。执行流程如下：
   *     1.等待直到 Stream 返回一个数据
   *     2.使用 1 中 Stream 返回的数据执行循环体
   *     3.重复 1、2 过程直到 Stream 数据返回完毕
   *     4.使用 break 和 return 语句可以停止接收 Stream 数据，这样就跳出了循环并取消注册监听 Stream
   * */


  Stream<int> streamData = asyncDataStream();
  // 接收异步数据流中的数据
  await for (int element in streamData) {
      print ("current receive async element is $element");
  }





}