class LinkedNode<T extends Object> {

    LinkedNode? next;
    T value;
    LinkedNode(this.value);
}

typedef ItemCreator<T> = T Function();

class LinkedList<T extends Object> {
  late LinkedNode<T> tail;
  late LinkedNode<T> head;
  final ItemCreator<T> _creator;
  late int length;


  /// 构造函数，需要传入参数（T）的构建函数
  LinkedList(ItemCreator<T> creator) : _creator=creator {
    length = 0;
    head =  LinkedNode(_creator()) ;
    tail = head;
  }
  LinkedList<T> append(T value) {
    LinkedNode<T> newNode =  LinkedNode(value);
    tail.next =  newNode;
    tail = newNode;
    length++;
    return this;
  }
  bool isEmpty() {
    return head==tail;
  }
  bool isNotEmpty() {
    return head != tail;
  }

  /// first 用于返回首元素
  T? first() {
     LinkedNode<Object>? firstNode = head.next  ;
     return firstNode != null ? firstNode.value as T : null ;
  }

  T? last() {
    if (length == 0) {
      return null;
    }
    return tail.value;
  }


  List<T> asList() {
    var current = head.next ;
    List<T> result = <T>[];
    while( current != null ) {
      result.add(current.value as T);
      current = current.next;
    }
    return result;
  }
}



String defaultString() {
  return "";
}


void main() {
   /**
    *
    *  泛型，泛型常用于需要要求类型安全的情况，但是它也会对代码运行有好处
    *  适当地指定泛型可以更好地帮助代码生成，使用泛型可以减少代码重复
    *
    *
    *  在进行泛型元素的创建时，需要提供元素创建函数
    *
    *
    *  参数化类型（T）
    *  限制参数化类型(T extends BaseClass)，就是限定参数必须继承自哪个基类。
    *  在下列的情况中，是可以使用参数化类型的。
    *  函数的返回值类型（T）.
    *  参数的类型（List<T>）.
    *  局部变量的类型 （ T tmp ）.
    *  下面是一段代码的举例
    *  T first<T>(List<T> ts) {
    *     // Do some initial work or error checking, then...
    *     T tmp = ts[0];
    *     // Do some additional checking or processing...
    *     return tmp;
    *   }
    * */
    LinkedList<String> linked = LinkedList(defaultString);
    linked.append("hello").append("world").append("A").append("B").append("C");
    List<String> list = linked.asList();
    for (final element in list) {
        print("the current element is $element");
    }

}