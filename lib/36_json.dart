



import 'dart:convert';

void main() {


  /**
   *
   *  倘若输入的是一个无效的JSON字符串。
   *  那么，会抛出一个名为FormatException的异常。
   *
   * **/

  const JsonEncoder encoder  =  JsonEncoder.withIndent(' ');
  final String jsonText = encoder.convert([1,2,{"a":null}]);
  print(jsonText);
  /**
   *  json.
   * */
  const JsonDecoder decoder =  JsonDecoder();
  dynamic  obj  = decoder.convert(jsonText);
  print(obj);
}