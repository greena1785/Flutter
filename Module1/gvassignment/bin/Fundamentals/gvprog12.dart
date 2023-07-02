import 'dart:io';

void main(){

  var num;
  var i, n=0;
  stdout.write('Enter Number : ');
  num = int.parse(stdin.readLineSync().toString());

  for (i = 1; i <= num; i++) {
    if (num % i == 0) {
      n++;
    }
  }

  if(n==2){
    print('It Is Prime Number');
  }
  else{
    print('It Is Not Prime Number');
  }

}