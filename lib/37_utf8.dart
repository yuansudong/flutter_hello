

import 'dart:convert';

void main() {
  /// 对字符串进行UTF8编码
  final utf8Encoder = utf8.encoder;
  const sample = '溄麒';
  print(sample.length);
  final encodedSample = utf8Encoder.convert(sample);
  print(encodedSample);

  /// 对UTF8进行解码
  final utf8Decoder =  utf8.decoder;
  final decodeText = utf8Decoder.convert(encodedSample);
  print(decodeText);
}