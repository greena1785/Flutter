import 'dart:io';
import 'dart:math';

void main()
{
  var radius;
  stdout.write('Enter Radius : ');
  radius = int.parse(stdin.readLineSync().toString());

  var area;
  area = pi * radius* radius;
  print('Area Of The Cricle Is $area');
}