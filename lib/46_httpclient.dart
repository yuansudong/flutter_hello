

import 'dart:convert';
import 'dart:io';



Future<void> ExGet() async {
  var client = HttpClient();
  // 将环境变量中的代理设置为代理
  client.findProxy=HttpClient.findProxyFromEnvironment;
  try {
    HttpClientRequest request = await client.getUrl(
        Uri.https('www.google.com', '/', {'limit': '10'}),
    );
    HttpClientResponse response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();
    print(stringData);
  } finally {
    client.close();
  }
}


Future<void> ExPost() async {
  var client = HttpClient();
  // 将环境变量中的代理设置为代理
  client.findProxy=HttpClient.findProxyFromEnvironment;
  try {
    HttpClientRequest request = await client.postUrl(
       Uri.parse("http://127.0.0.1:8080/user/one")
    );
    /// 下面这里是添加头部
    request.headers.set("content-type", "application/json");
    /// 下面这里是给body体添加数据
    request.add(utf8.encode(json.encode({"name":"h1h1"})));
    HttpClientResponse response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();
    print(stringData);
  } finally {
    client.close();
  }
}



Future<void> main() async {
      //await  ExGet();
  await ExPost();
}