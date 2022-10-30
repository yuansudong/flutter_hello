

import 'dart:math';

void main() {

  var now = DateTime.now();
  print("$now ||||||| ${now.timeZoneName} ||||||| ${now.toLocal().toIso8601String()}");
  print(now.toUtc().toIso8601String());
  /// 增加时间间隔
  var expireIn =  now.add(const Duration(days: 1));
  print(now.millisecond);
  print(now.isAfter(expireIn));
  print(now.isBefore(expireIn));
  print(now.toLocal().timeZoneOffset);

  /// 两个时间相减，
  final difference =  expireIn.difference(now);
  print(difference.inHours);
  print(now.isAtSameMomentAs(expireIn));
  /// 减去时间间隔
  print(now.subtract(const Duration(days: 1)).toIso8601String());

}