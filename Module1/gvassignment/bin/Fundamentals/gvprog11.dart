import 'dart:io';

void main(){

  var year;
  stdout.write('Enter Year : ');
  year = int.parse(stdin.readLineSync().toString());


  if(year%4==00){
    print('It Is Leap Year');
  }
  else{
    print('It Is Not Leap Year');
  }

}