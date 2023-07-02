import 'dart:io';

void main(){
  int rows=5,numbers;
  for (int i = 0 ; i< rows; i++)
  {
    numbers =1;
    for (int j=(rows-i);j>1;j--)
    {
      stdout.write(" ");
    }
    for (int j = 0;j<=i;j++)
    {
      stdout.write('$numbers '  );
      numbers++;
    }
    stdout.writeln();
  }}