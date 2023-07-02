import 'dart:io';

void main()
{
  var m1;
  stdout.write('Enter Subject 1 Marks: ');
  m1 = int.parse(stdin.readLineSync().toString());
  var m2;
  stdout.write('Enter Subject 2 Marks: ');
  m2 = int.parse(stdin.readLineSync().toString());
  var m3;
  stdout.write('Enter Subject 3 Marks : ');
  m3 = int.parse(stdin.readLineSync().toString());
  var m4;
  stdout.write('Enter Subject 4 Marks: ');
  m4 = int.parse(stdin.readLineSync().toString());
  var m5;
  stdout.write('Enter Subject 5 Marks : ');
  m5 = int.parse(stdin.readLineSync().toString());

  var sum;
  var percentage;
  sum = m1 + m2 + m3 + m4 + m5;
  percentage = sum/500 * 100;
  print('Sum Of 5 Subject Marks $m1, $m2, $m3, $m4 and $m5 Is $sum ');
  print('Percentage Of 5 Subject Marks $m1, $m2, $m3, $m4 and $m5 Is $percentage');
  if(percentage>75){
    print('Distinction');
  }
  else if(percentage>60 && percentage<=75){
    print('First Class');
  }
  else if(percentage>50 && percentage<=60){
    print('Second Class');
  }
  else if(percentage>35 && percentage<=50){
    print('Pass Class');
  }
  else
    {
      print('Fail');
    }
}