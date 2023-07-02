import 'dart:io';


void main()
{
  var Centigrade ;
  stdout.write('Enter Centigrade : ');
  Centigrade = int.parse(stdin.readLineSync().toString());

  var Fahrenheit;
  Fahrenheit= (Centigrade* 9/5)+32;
  print('Temperature From Degree Centigrade $Centigrade to Fahrenheit Is $Fahrenheit');
}