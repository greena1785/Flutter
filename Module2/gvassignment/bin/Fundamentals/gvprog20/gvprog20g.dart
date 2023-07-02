import 'dart:io';

void main() {
  int num,r,sum=0,t;
  stdout.write('Enter Integer: ');
  num = int.parse(stdin.readLineSync().toString());

  for(t=num;num!=0;num=(num~/10)){
    r=num % 10;
    sum=sum*10+r;
  }
  print('Your Reverse Number Is $sum');
}