


Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) {
    yield k++;
  }
}



void main() {
  Iterable<int> iter = naturalsTo(100);
  for (int element in iter) {
    print("iterator is $element");
  }
}