import 'dart:io';

void main(){
  int n, sum=0, firstDigit, lastDigit;
  stdout.write('Enter Integer: ');
  n = int.parse(stdin.readLineSync().toString());
  // Find last digit of a number
  lastDigit = n % 10;
  //Find the first digit by dividing n by 10 until n greater then 10
  while(n >= 10)
  {
    n = n ~/ 10;
  }
  firstDigit = n;
  //Calculate sum of first and last digit
  sum = firstDigit + lastDigit;
  
  print('A Summation Of First And Last Digit Is $sum');
}