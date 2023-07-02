import 'dart:io';

void main(){
  int t1 = 0, t2 = 1, nextTerm = 0;
  var n;
  stdout.write('Enter Positive Number: ');
  n = int.parse(stdin.readLineSync().toString());
  print('Fibonacci  Series:');
  nextTerm = t1 + t2;

  while (nextTerm <= n) {
    print('$nextTerm');
    t1 = t2;
    t2 = nextTerm;
    nextTerm = t1 + t2;
  }
}