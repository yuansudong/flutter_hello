


import 'dart:collection';


/// 用于显示
void show(Map<int,String> m) {
  print("*************************************************");
  m.forEach((key, value) {
    print("$key \t $value");
  });
  print("*************************************************");
}


void main() {
  /**
   *
   * UnmodifiableMapView,返回一个只读的map视图。视图只能看，不能改写。
   * 倘若，发生了改写会触发异常(Unhandled exception).
   * */
  final baseMap = <int,String>{1:"one",2:"two",3:"three"};
  final mapView = UnmodifiableMapView<int,String>(baseMap);
  show(mapView);
  baseMap.remove(3);
  show(mapView);
  mapView.remove(3);
}

