import 'dart:io';

void main() {
  var n1;
  stdout.write('Enter Number 1: ');
  n1 = int.parse(stdin.readLineSync().toString());
  var n2;
  stdout.write('Enter Number 2: ');
  n2 = int.parse(stdin.readLineSync().toString());
  var n3;
  stdout.write('Enter Number 3 : ');
  n3 = int.parse(stdin.readLineSync().toString());

  if(n1 >= n2 && n1 >= n3){
    print('Maximum Number Is $n1');
  }
  else if(n2 >= n1 && n2 >= n3){
    print('Maximum Number Is $n2');
  }
  else if(n3 >= n1 && n3 >= n2){
    print('Maximum Number Is $n3');
  }

}