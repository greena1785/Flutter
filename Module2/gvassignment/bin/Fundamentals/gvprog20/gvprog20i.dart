import 'dart:io';

void main(){
  int n,sum=0,m;
  stdout.write('Enter Integer: ');
  n = int.parse(stdin.readLineSync().toString());

  while(n>0)
  {
    m=n%10;
    sum=sum+m;
    n=(n~/10);
  }
  print('Summation Of The Number Is $sum');
}
