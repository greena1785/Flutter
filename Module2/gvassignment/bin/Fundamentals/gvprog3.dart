import 'dart:io';
import 'dart:math';

void main(){

  var num;
  stdout.write('Enter Number : ');
  num = int.parse(stdin.readLineSync().toString());

  var sq = pow(num, 2);
  var cb = pow(num, 3);
  print('Square of $num is  $sq');
  print('Cube of $num is $cb');
}
