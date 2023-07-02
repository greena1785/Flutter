import 'dart:io';

void main()
{
  var n;
  stdout.write('Enter Integer: ');
  n = int.parse(stdin.readLineSync().toString());

  var i, range;
  do{
    stdout.write('Enter Range: ');
    range = int.parse(stdin.readLineSync().toString());
  }while(range <=0);

  for (i = 1; i <= range; i++) {
    print('$n * $i= ${n * i}');
  }

}