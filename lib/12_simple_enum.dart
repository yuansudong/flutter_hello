


/// Color 定义一个枚举值
enum Color {
  red,
  green,
  blue
}



void main() {


  /**
   *
   *  枚举,以字面值为表，数字为实的类型。
   *  每个枚举成员都包含着index，name 两个属性。
   *  这两个属性分别代表着枚举的数字，以及名称。
   *  倘若想获得所有的枚举值，可以通过values属性拿到。
   *  可以在 Switch 语句中使用枚举，但是需要注意的是必须处理枚举值的每一种情况。
   *  即每一个枚举值都必须成为一个 case 子句，不然会出现警
   * */

  Color blue =  Color.blue;
  print("instance, name:${blue.name},index:${blue.index}");
  /// 打印所有可用的枚举值，并输出每个元素的数字值以及字面值。
  for (final element in Color.values ) {
    print("name: ${element.name},index: ${element.index}");
  }





}