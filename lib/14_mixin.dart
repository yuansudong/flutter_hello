


mixin ScreenSet {
  bool state = false;
  /// 允许
  void allowCapture() {
    print("allow capture");
    state = true;
  }
  /// 拒绝
  void rejectCapture() {
    print("reject capture");
    state = false;
  }
}

mixin VideoSet {
  bool state =  false;
  /// 允许
  void playVideo() {
    print("play video");
    state = true;
  }
  /// 拒绝
  void stopVideo() {
    print("stop video");
    state =  false;
  }
}

mixin AudioSet  {
   bool state = false;

   void playAudio() {
      print("play audio");
      state = true;
   }

   void stopAudio() {
      print("stop audio");
      state = false;
   }
}

mixin NetworkSet {
  bool state = false;
  void allowNetwork() {
    print("allow network");
    state = true;
  }
  void rejectNetwork() {
    print("reject network");
    state = false;
  }
}


/// SystemSet.方法的优先级顺序是按照栈的规则，先入后出的原则。
/// 方法的入栈顺序是: (extend class) -> AudioSet -> VideoSet-> ScreenSet -> NetworkSet
/// 方法的出栈顺序与之相反
class SystemSet with AudioSet,VideoSet,ScreenSet,NetworkSet {
  /// day 进入日间模式
  void day() {
    print("==========进入日间模式==========");
    playAudio();
    playVideo();
    allowCapture();
    allowNetwork();

  }
  /// night 进入夜间模式
  void night() {
    print("==========进入夜间模式==========");
    stopAudio();
    stopVideo();
    rejectCapture();
    rejectNetwork();
  }










}







void main() {


  /**
   *
   *   mixin 是一种在多重继承中复用某个类中代码的方法模式。
   *   实现一个 Mixin，请创建一个继承自 Object 且未声明构造函数的类。除非你想让该类与普通的类一样可以被正常地使用，否则请使用关键字 mixin 替代 class
   *
   *   每个mixin，其方法尽量简单。以mixin小写名为主，这样可以避免在一个类中使用多个mixin时，同名方法只能使用最后一个入栈的mixin.
   *
   * */

  SystemSet ss = SystemSet();
  ss.day();
  ss.night();
}