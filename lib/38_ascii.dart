


import 'dart:convert';

void main() {

  /**
   *
   *   需要注意的是，在用ascii进行编码时，倘若字符不存在ascii码表中
   *   会引发异常。
   *
   * */
  const asciiEncoder =  AsciiEncoder();
  /// sample
  const sample = "hello,world!";
  final encodeList =  asciiEncoder.convert(sample);
  print(encodeList);

  const asciiDecoder =  AsciiDecoder();
  final result = asciiDecoder.convert(encodeList);
  print(result);
}
