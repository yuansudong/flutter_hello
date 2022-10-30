
void main() {
  var numReg = RegExp(r'\d+');
  const text = "1111,2222,3333,4444,5555,hello,world";
  // 匹配到第一个元素就返回
  final result = numReg.firstMatch(text);
  print(result![0]);
  /// numReg.pattern 正则表达式
  print(numReg.pattern);
  /// stringMatch 匹配到第一个就返回
  print(numReg.stringMatch(text));
  for (final element in numReg.allMatches(text) ) {
    print(element[0]);
  }
}
