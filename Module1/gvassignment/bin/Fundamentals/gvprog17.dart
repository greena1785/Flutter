import 'dart:io';

void main() {
  var num;
  stdout.write('Enter Number: ');
  num = int.parse(stdin.readLineSync().toString());

  switch(num)  {
    case 1:
        print('Sunday');
        break;
    case 2:
      print('Monday');
      break;
    case 3:
      print('Tuesday');
      break;
    case 4:
      print('Wednesday');
      break;
    case 5:
      print('Thursday');
      break;
    case 6:
      print('Friday');
      break;
    case 7:
      print('Saturday');
      break;
    default:
      print('Invalid');
  }
}

