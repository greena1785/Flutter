class Rectangle{
  double length,breadth;

  Rectangle(this.length,this.breadth);
  void area(){
    var a;
    a = length * breadth;
    print('Area Of Rectangle Is $a');
  }
  void perimeter(){
    var p;
    p = 2 * (length + breadth);
    print('Perimeter Of Rectangle Is $p');
  }
}
class Square extends Rectangle{
  Square(super.length, super.breadth);
  void area(){
    var a;
    a = length * length;
    print('Area Of Square Is $a');
  }
  void perimeter(){
    var p;
    p = 4 * length;
    print('Perimeter Of Square Is $p');
  }
}
void main(){
  var r1 = Rectangle(20, 16);
  r1.area();
  r1.perimeter();
  print('------------------------------------------------');
  var s1 = Square(20, 20);
  s1.area();
  s1.perimeter();
}