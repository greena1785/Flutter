import 'dart:math';

class Triangle{
  double s1=3,s2=4,s3=5;


  void area(){
    var s;
    s= (s1 + s2 + s3)/2;
    var a;
    a = sqrt(s*(s-s1)*(s-s2)*(s-s3));
    print('Area Of Triangle Is $a');
  }
  void perimeter(){
    var p;
    p = s1 + s2 + s3;
    print('Perimeter Of Triangle Is $p');
  }
}
void main(){
  var t1 = Triangle();
  t1.area();
  t1.perimeter();
}