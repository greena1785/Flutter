import 'dart:io';

void main(){

  var num;
  stdout.write('Enter Number : ');
  num = int.parse(stdin.readLineSync().toString());


  if(num>0){
    print('It Is Positive Number');
  }
  else{
    print('It Is Negative Number');
  }

}