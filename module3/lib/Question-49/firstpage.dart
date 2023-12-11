import 'package:flutter/material.dart';
import 'package:module3/Question-49/ui-desgin2.dart';
import 'package:module3/Question-49/ui-design1.dart';

void main() => runApp(MyScreen49());

class MyScreen49 extends StatelessWidget {
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
                      builder: (context) => Screen_1(),
                    ));
                  },
                  child: Text('Page - 1')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Screen_2(),
                    ));
                  },
                  child: Text('Page - 2')),

            ],
          )
        ),
      ),
    );
  }
}
