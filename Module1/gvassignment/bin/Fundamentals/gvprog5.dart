import 'dart:io';


void main()
{
  var heigth;
  stdout.write('Enter Heigth : ');
  heigth = int.parse(stdin.readLineSync().toString());
  var breath;
  stdout.write('Enter Breath : ');
  breath = int.parse(stdin.readLineSync().toString());

  var area;
  area = 0.5 * heigth* breath;
  print('Area Of The Triangle Is $area');
}