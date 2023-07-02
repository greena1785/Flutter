import 'dart:io';

void main()
{
  var x;
  stdout.write('Enter x : ');
  x = int.parse(stdin.readLineSync().toString());
  var y;
  stdout.write('Enter y : ');
  y = int.parse(stdin.readLineSync().toString());
   print('Before Swapping Number Are $x And $y');

   x = x + y;
   y = x - y;
   x = x - y;

  print('After Swapping Number Are $x And $y');
}