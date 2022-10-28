import 'dart:async';
import 'dart:io';

void main() {
  // scheduleTimeout(5 * 1000); // 5 seconds.

   var counter = 3;
   Timer.periodic(const Duration(seconds: 1), (timer) {
     print("execute once");
     print(timer.tick);
     counter--;
     if (counter == 0) {
       print('Cancel timer');
       timer.cancel();
     }
   });
   Timer.run(() { print("以最快的速度，执行该异步匿名函数");});

   // sleep(const Duration(seconds: 10));
}


/// 持久定时器，除非取消，否则会一直存在。
///
///

/// // Outputs:
/// // 1
/// // 2
/// // 3
/// // "Cancel timer"

/// 超时定时器
Timer scheduleTimeout([int milliseconds = 10000]) =>
    Timer(Duration(milliseconds: milliseconds), handleTimeout);

void handleTimeout() {  // callback function
  // Do some work.
  print("超时定时器完成");
}