import 'dart:io';

void main()
{
  var pr;
  stdout.write('Enter Principal Amount: ');
   pr = int.parse(stdin.readLineSync().toString());
  var ti;
  stdout.write('Enter Period Of Time : ');
   ti = int.parse(stdin.readLineSync().toString());
  var ra;
  stdout.write('Enter Rate Of Interest : ');
   ra = int.parse(stdin.readLineSync().toString());

  var SimpleInterest;
  SimpleInterest = (pr*ti*ra)/100;
  print('Simple Interest Of Principal Amount $pr , Period Of Time $ti, Rate Of Interest $ra  Is $SimpleInterest');
}