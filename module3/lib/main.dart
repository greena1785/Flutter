import 'package:flutter/material.dart';
import 'package:module3/Question-49/firstpage.dart';
import 'package:module3/Question-50/main50.dart';
import 'package:module3/Question-51/main51.dart';
import 'package:module3/Question-52/main52.dart';
import 'package:module3/Question-53/main53.dart';
import 'package:module3/Question-54/main54.dart';
import 'package:module3/Question-55/main55.dart';
import 'package:module3/Question-56/main56.dart';
import 'package:module3/Question-57/main57.dart';
import 'package:module3/Question-58/main58.dart';
import 'package:module3/Question-59/page1.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Module-3',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<String> indeX = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',

  ];
  static List<String> qustionsList = [
    'Question - 49 Create below screens',
    'Question - 50 Create an application to take input number from user and print its reverse number in TextField',
    'Question - 51 Create an application to input 2 numbers from user and all numbers between those 2 numbers in next activity',
    'Question - 52 Create an application with radio buttons (Add, Subtraction, Multiply, Division) EditText (number1, number2) and print result as per user choice from radio button in TextView',
    'Question - 53 Create an application to change background when button is clicked',
    'Question - 54 create an application to in create font size when plus button click and decrease when minus button click',
    'Question - 55 Create an application to display Textview when checkbox is checked and hide otherwise',
    'Question - 56 Write a program to show four images around Textview.',
    'Question - 57 Write a program in android display screen color which the Color will be select from the radio button.',
    'Question - 58 Write a program you have taken three seek bar controls. From threeSeekbar which Seekbar value changed the background color of device will be changed.',
    'Question - 59 Create login and registration form',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module-3'),
      ),
      body: ListView.builder(
        itemCount: indeX.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text(qustionsList[index].trim().toString()),
              onTap: () {
                int clicked = int.parse(indeX[index]);
                switch(clicked){
                  case 0:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen49(),));
                  }break;
                  case 1:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MyScreen50(),));
                  }break;
                  case 2:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen51(),));
                  }break;
                  case 3:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen52(),));
                  }break;
                  case 4:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen53(),));
                  }break;
                  case 5:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen54(),));
                  }break;
                  case 6:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen55(),));
                  }break;
                  case 7:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen56(),));
                  }break;
                  case 8:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen57(),));
                  }break;
                  case 9:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen58(),));
                  }break;
                  case 10:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen59(),));
                  }break;
                }
              },
            ),
          );
        },
      ),
    );
  }
}
