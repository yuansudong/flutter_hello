//  主函数，程序的入口。args 为控制台输入的参数。
void main(List<String> args) {
  /**
   *
   * 流程控制语句中，包含着 if else,for,while,do-while,switch case. assert。
   *
   * 在for, while, do-while, 循环语句中还包括着continue,以及break.
   * continue 代表循环语句中，停止当前循环。启动下一次新循环。
   * break 代表循环语句中，跳出当前的循环。
   * switch case.根据switch所具有的表达式，与case所具有的表达式，从上到下，依次匹配。
   * 直到匹配到具有满足的表达式即可。倘若没有匹配到case分支，且有默认分支，会走默认（default)分支。
   * 每个case语句后面，需要跟一个break语句（一些语言中是不需要的），否则会继续向下执行。
   *
   *
   *
   * */
  /**
   *
   *  条件分支. if,else if,else. 在条件分支中，至少会有if.else if 可选，仅当if 表达式不满足时，
   *  才会执行else if分支。倘若if,else if分支有一个分支满足，程序就会走出条件分支。
   *  倘若一个分支都不满足，且有else 分支，则会走else分支。
   *  个人在这块写代码的心得是，永远只有if，没有else 以及 else if.
   *  这种写法相当于在进入if之前，就先给了默认值。若有分支，用switch case. 所以，我的代码一般是，一路 if。99%不见else.
   *
   * */

  int condition = 25;

  /// assert 当表达式不为true时，会引发Unhandled exception类型的异常。
  /// 在flutter中，assert表达式仅在DEBUG模式下有效（根据文档上看到的）。
  // assert(condition == 26);
  assert(condition == 25);
  if (condition == 1) {
    print("the condition is 1. and this is else-if branch");
  } else if (condition == 2) {
    print("the condition is 2. and this is else-if branch ");
  } else if (condition == 3) {
    print("the condition is 3.and this is else-if branch");
  } else {
    print("the condition is 25. and this is else branch");
  }


  /**
   *  switch case.
   * */
   switch (condition) {
     case 25:
       print("switch-case:25");
       break;
     case 1:
       print("switch-case:1");
       break;
     case 2:
       print("switch-case:2");
       break;
     case 3:
       print("switch-case:3");
       break;
     default:
         print("no match branch.the condition is $condition");

   }

  /**
   *
   *
   * 循环语句： for,while,do-while.
   *
   *  for 是一个最普通的，也是最常见的循环语句，主要是用于遍历一组元素。
   *  这一组元素的组织结构可以是数组，链表，图，字典类型等。
   *
   *
   * */
  /// step-1: declare and define the  list of no change.
  List<int> noChangeList = const [1, 2, 3, 4, 5];
  for (int index = 0; index < noChangeList.length; index++) {
    /// print the value of noChangeList's element.
    print(
        "normal-for:index:$index, noChangeList[index]:${noChangeList[index]}.");
  }
  for (int element in noChangeList) {
    /// print the value of noChangeList's element.
    print("for-in: the current value is $element");
  }
  // idea tips: avoid use forEach.
  noChangeList.forEach((element) {
    ///  print the value of noChangeList's element
    print("for-each: the current value is $element");
  });

  /**
   *
   *
   *
   *  while，是一个循环语句。在执行之前，会判定表达式中的语句是否为true.
   *  倘若为true,才会继续执行。倘若为false,则不会继续执行。
   *  如果，在循环体内，遇见了break语句。那么，会跳出循环的执行。
   *
   * */
  //  while(true) {} // 这是一个死循环。
  int whileIndex = 0;
  while (whileIndex < noChangeList.length) {
    /// print the value of noChangeList's element.
    print("while: the current value is ${noChangeList[whileIndex]}");
    whileIndex++;
  }

  /**
   *
   *  do-while，与while类似，不过，需要先执行一遍循环体，才会判定循环条件是否满足。
   *  倘若循环条件满足，才会继续执行循环。
   *
   * */
  int doWhileIndex = 0;
  do {
    if (doWhileIndex == 3) {
      /// enter it. stand for exit do-while loop.
      break;
    }
    // if (doWhileIndex == 2) {
    //   /// enter it. stand for open a new loop.
    //   continue;
    // }
    /// step-1 : print the value of noChangeList's element.
    print("do-while: the current value is ${noChangeList[doWhileIndex]} ");
    doWhileIndex++;
  } while ( doWhileIndex < noChangeList.length );



}
