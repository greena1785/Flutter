class Parent{
  void prints(){
    print('This is a parent class');
  }
}
class Child extends Parent{
  void prints(){
    print('This is a child class');
  }
}

void main(){
 var p1 = Parent();
 var c1 = Child();
 p1.prints();
 c1.prints();
 c1.prints();
}