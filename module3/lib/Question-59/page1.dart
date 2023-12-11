import 'package:flutter/material.dart';
import 'package:module3/Question-49/ui-desgin2.dart';
import 'package:module3/Question-49/ui-design1.dart';
import 'package:module3/Question-59/login.dart';
import 'package:module3/Question-59/registration.dart';

void main() => runApp(MyScreen59());

class MyScreen59 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question - 49'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyRegister(),
                    ));
                  },
                  child: Text('RegistrationPage')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyLogin(),
                    ));
                  },
                  child: Text('LoginPage')),

            ],
          )
        ),
      ),
    );
  }
}
