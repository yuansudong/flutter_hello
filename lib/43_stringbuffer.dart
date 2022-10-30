

void main() {

  final buffer =  StringBuffer();
  
  buffer.write("one: good 1");
  buffer.writeln("two: good 2");
  buffer.writeCharCode(65);
  buffer.write("complete");

  print(buffer.toString());
  buffer.clear();
  print(buffer.toString());
  
  print(buffer.toString());
}