import 'dart:io';
void main(){
  int rows = 5;
  for(int i = 1; i <= rows; i++)
  {
    for(int j=2*(rows-i);j>=0;j--){
      stdout.write(" ");
    }

    for(int j = i; j >= 1; j--)
    {
      stdout.write('$j ');

    }
    stdout.writeln();
  }
}