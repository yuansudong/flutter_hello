

// TextException 文本异常
class TextException {
    String text;
    // Exception 构造函数。
    TextException(this.text);
}

// NumException 数字异常
class NumException {
    String text;
    //
    NumException(this.text);
}

class UnknownException {
    String text;
    UnknownException(this.text);
}


void main() {
  /**
   *  异常,发生了意料之外的错误。要向发生了意料之外的错误后，还能够继续执行。需要捕获异常
   *  在处理异常这里，通常有三个关键字。分别是，try catch final.
   *  try 语句块中，包含着可能发生异常的代码。
   *  catch 语句块中，捕获可能发生的异常。倘若在catch前加了on，相当于给异常指定了类型
   *        若在捕获的语句块中，不处理该异常。可以通过rethrow,再次抛出异常，给上层异常处理。
   *  finally 无论是否发生异常，该语句块都会执行。
   * */

  try{
    throw UnknownException("Unknown");
  } on NumException catch (e) {
    print("数字捕获异常: ${e.runtimeType}");
  } on TextException catch (exception,stack) {
    print("文字捕获异常: ${exception.runtimeType}");
    print("当前的栈信息是: ${stack.toString()}");
  } catch(e) {
    print("未知的异常: ${e.runtimeType}");
    rethrow;
  } finally {
    print("无论是否发生了异常，这块的代码都会执行.哪怕重新抛出了异常，这块的代码也是会执行的");
  }


}