import 'dart:io';

void main() {
  var n1;
  stdout.write('Enter Number 1 : ');
  n1 = int.parse(stdin.readLineSync().toString());
  var n2;
  stdout.write('Enter Number 2 : ');
  n2 = int.parse(stdin.readLineSync().toString());
  var num;
  print('Menu');
  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiplication');
  print('4. Division');
  stdout.write('Enter Number: ');
  num = int.parse(stdin.readLineSync().toString());

  var cal;

  switch(num)  {
  case 1:
    cal = n1 + n2 ;
    print('Addition Of $n1 And $n2 Is $cal');
  break;
  case 2:
  cal = n1 - n2 ;
  print('Subtraction Of $n1 And $n2 Is $cal');
  break;
  case 3:
  cal = n1 * n2 ;
  print('Multiplication Of $n1 And $n2 Is $cal');
  break;
  case 4:
  cal = n1 / n2 ;
  print('Division Of $n1 And $n2 Is $cal');
  break;
  default:
    print('Invalid');
  }
}
