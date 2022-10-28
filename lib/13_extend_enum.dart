


enum Vehicle  {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  /// 常量构造函数，以命名构造的方式。
  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  /// tires 枚举的扩展成员,其修饰符一定包括final,包括mixin混入的字段
  final int tires;
  /// passengers 枚举的扩展成员,其修饰符一定包括final,包括mixin混入的字段
  final int passengers;
  /// carbonPerKilometer 枚举的扩展成员，其修饰符一定包括final,包括mixin混入的字段
  final int carbonPerKilometer;
  /// carbonFootprint 枚举的扩展计算属性
  int get carbonFootprint => (carbonPerKilometer / passengers).round();


}



void main() {


  /**
   *  扩展性枚举，主要用于想让一个枚举，包含更多的信息.
   *  也就是在成员index,name的基础上增加更多的信息。
   *  比如，一个树的枚举类型。比如，桃树，梨树，银杏树，它们的体态特征很多。
   *  如果，要通过枚举进行概括或者描述,就需要对枚举进行扩展
   *  要实现一个扩展性枚举，需要遵循下面的规则:
   *  rule-1: 实例的字段必须是 final，包括由 mixin 混入的字段
   *  rule-2: 所有的 实例化构造 必须以 const 修饰
   *  rule-3: 工厂构造 只能返回已知的一个枚举实例
   *  rule-4: 由于 Enum 已经自动进行了继承，所以枚举类不能再继承其他类。
   *  rule-5: 不能重载 index、hashCode 和比较操作符 ==。
   *  rule-6: 不能声明 values 字段，否则它将与枚举本身的静态 values getter 冲突。
   *  rule-7: 在进行枚举定义时，所有的实例都需要首先进行声明，且至少要声明一个枚举实例。
   * */

  Vehicle bicycle = Vehicle.bicycle;
  Vehicle bus = Vehicle.bus;
  print("${bicycle.tires},${bicycle.passengers},${bicycle.carbonPerKilometer}");

  if (bus == bicycle) {
     print ("bus ==  bicycle");
  }


}
