
import 'dart:convert';

void main() {

  /**
   *
   *
   * */


  String text = "这是一段文本,ha,hc";
  String encodeString = base64.encode(utf8.encode(text));
  print(encodeString);
  print(utf8.decode(base64.decode(encodeString)));
  String urlEncodeString = base64Url.encode(utf8.encode(text));
  print(urlEncodeString);
  print(utf8.decode(base64Url.decode(urlEncodeString)));



}
