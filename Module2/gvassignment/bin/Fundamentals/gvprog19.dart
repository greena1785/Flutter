import 'dart:io';
import 'dart:math';

void main() {
  var num;
  print('Menu');
  print('1. Area Of Triangle');
  print('2. Area Of Rectangle');
  print('3. Area Of Cricle');
  stdout.write('Enter Number: ');
  num = int.parse(stdin.readLineSync().toString());



  switch(num)  {
    case 1:

        var area;
        var b;
        stdout.write('Enter Base Value: ');
        b = int.parse(stdin.readLineSync().toString());
        var h;
        stdout.write('Enter Height Value : ');
        h = int.parse(stdin.readLineSync().toString());
        area = 0.5 *h*b;
        print('Area Of Triangle Is $area');
      break;
    case 2:
      var area;
      var l;
      stdout.write('Enter Length Value: ');
      l = int.parse(stdin.readLineSync().toString());
      var w;
      stdout.write('Enter Width Value : ');
      w = int.parse(stdin.readLineSync().toString());
      area = w*l;
      print('Area Of Rectangle Is $area');
      break;
    case 3:
      var area;
      var r;
      stdout.write('Enter Radius : ');
      r = int.parse(stdin.readLineSync().toString());
      area = pi*r*r ;
      print('Area Of Circle Is $area');
      break;
    default:
      print('Invalid');
  }
}
