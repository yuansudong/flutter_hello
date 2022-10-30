

import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  var socket = await WebSocket.connect('ws://127.0.0.1:8080/ws');


  /// listen 用于接收数据，处理错误
  socket.listen((event) {
    print("接收到了数据:${event.toString()}");
  },onError: (e) => { print("error:${e.toString()}")} );

  /// addUtf8Text 接收数据
  socket.addUtf8Text(utf8.encode('Hello, World!'));
  /// 延迟五秒退出
  await Future.delayed(const Duration(seconds: 5));
  socket.close();
}