import 'dart:io';

void main() {
  var a;
  stdout.write('Enter Number 1: ');
  a = int.parse(stdin.readLineSync().toString());
  var b;
  stdout.write('Enter Number 2: ');
  b = int.parse(stdin.readLineSync().toString());
  var c;
  stdout.write('Enter Number 3 : ');
  c = int.parse(stdin.readLineSync().toString());

  var max;
  max = (a > b)?((a > c)?a:c):((b > c)?b:c);

  print('Maximum Number Is $max');

}