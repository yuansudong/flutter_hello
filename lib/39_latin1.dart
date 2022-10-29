

import 'dart:convert';

void main() {
  /// 编码
  const latin1Encoder = Latin1Encoder();
  const sample = 'àáâãäå';
  final encoded = latin1Encoder.convert(sample);
  print(encoded); // [224, 225, 226, 227, 228, 229]

  /// 解码
  /// 在解码时，需要注意的是，如果字符编码不在0~255之间，
  /// 且allowInvalid是false，会抛出FormationException异常。
  ///
  const latin1Decoder = Latin1Decoder();

  const encodedBytes = [224, 225, 226, 227, 228, 229];
  final decoded = latin1Decoder.convert(encodedBytes);
  print(decoded); // àáâãäå

  const hexBytes = [0xe0, 0xe1, 0xe2, 0xe3, 0xe4, 0xe5];
  final decodedHexBytes = latin1Decoder.convert(hexBytes);
  print(decodedHexBytes); // àáâãäå


}