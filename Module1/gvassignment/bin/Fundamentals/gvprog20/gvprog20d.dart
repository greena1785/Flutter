import 'dart:io';

void main(){
  var i;
  num fact=1;
  var n;
  stdout.write('Enter Number: ');
  n = int.parse(stdin.readLineSync().toString());
  for(i=1;i<=n;i++)
    {
      fact = fact * i ;
      print('Factorial Of $n Is $fact');
    }
}