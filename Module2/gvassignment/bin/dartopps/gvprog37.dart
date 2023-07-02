class Area{
  void Rectangle(double length,double width){
    var area;
    area = length*width;
    print('Area Of Rectangle Is $area');
  }
  void Square(double length){
    var area;
    area = length*length;
    print('Area Of Square Is $area');
  }
}
void main(){
  var a1 = Area();
  a1.Rectangle(20.02, 16.02);
  a1.Square(16.02);
}