late String description = readA();


String readA() {
  print('read operator A');
  return 'operator A';
}


void main() {

  var b = 200;
  int a = 100;
  b ??= a;
  print("the current text is ${b}");

}