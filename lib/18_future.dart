


Future<void> printNumber() async {
  for(int index = 0; index < 10; index++) {
    print("当前的下标是:$index");
  }
}


Future<int> getValue() async {
   throw "hello";
  return 100;
}


Future<String> fetchUserOrder() =>
Future.delayed(
  const Duration(seconds: 2),
      () => 'Large Latte',
);

Future<void> main()  async {


  /**
   *
   *  Future,用于标识一个函数返回对象，该对象是异步的，它可以被看做是单个异步操作。
   *  在遇见一些比较耗时的操作时，异步函数会先返回，而不等待函数的执行结果。
   *  倘若要等待函数的执行结果。那么，需要使用await 关键字在调用异步函数时，进行修饰。
   *  tip-1: 在书写异步函数时，除了要使用Future修饰返回结果之外，还需要通过async进行修饰函数。
   *         或者说，对于使用了await关键字的函数，需要async 进行修饰，包括main函数。
   *  tip-2: 异步函数执行时会在其遇到第一个 await 表达式（代码行）时返回一个 Future 对象，然后等待 await 表达式执行完毕后继续执行。
   *  tip-3: 在使用 await 时导致编译错误，请确保 await 在一个异步函数中使用。例如，如果想在 main() 函数中使用 await，那么 main() 函数就必须使用 async 关键字标识
   *  tip-4: 如果异步函数的返回类型不是Future<void>,而是其他具有意义的数值，且不通过await进行调用，那么，该值会传递给then函数。
   *         倘若在这期间，通过throw抛出了错误，会走到catchError里
   *  tip-5: Future.delayed(duration) 可以用作延迟函数。也就是休息多少时间后，执行一些代码。
   *  tip-6: catchError 还可以通过test函数，捕获指定的异常，根据指定的异常进行相应的处理操作。
   *          handleAuthResponse(const {'username': 'dash', 'age': 3})
              .then((_) => ...)
              .catchError(handleFormatException, test: (e) => e is FormatException)
              .catchError(handleAuthorizationException,
                    test: (e) => e is AuthorizationException);
      tip-7: whenComplete 无论是否发生错误，都会被执行。类似于try...catch...finally 中的finally.
   * */

  await printNumber();
  // 下面的代码是异步操作
  // Future.sync((){
  getValue().then(
          (value) => print("value is $value"))
      .catchError(
          (e)=> print("current happen error ${e.toString()}. runtimeType is ${e.runtimeType}")
  ).whenComplete(() => print("我是完成了的"));
  // });

  // 下面的代码是同步操作
  Future.sync(() async {
    int v = await getValue();
    print("当前v所代表的值是:$v");
  }) ;

  // print("当前延迟执行的结果是 ${await fetchUserOrder()}");
}

