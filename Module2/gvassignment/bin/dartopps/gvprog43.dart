class Parent{
  void prints(){
    print('This is a Parent class');
  }
}
class First extends Parent{
  @override
  void prints(){
    print('This is a First subclass');
  }
}
class Second extends Parent{
  @override
  void prints(){
    print('This is a Second subclass');
  }
}

void main(){
  var p1 = Parent();
  p1.prints();
  var f1 = First();
  f1.prints();
  var s1 = Second();
  s1.prints();
}