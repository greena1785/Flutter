import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen56());
}

class MyScreen56 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageTextViewApp(),
    );
  }
}

class ImageTextViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images Around TextView'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Expanded(
                 child:  Image.asset(
                 'assets/greena.jpg',
                 width: 200,
                 height: 200,
               ),),
               Expanded(
                 child:  Image.asset(
                 'assets/vishal.jpg',
                 width: 200,
                 height: 200,
               ),)
              ],
            ),
            Text(
              'Greena And Vishal',
              style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

               Expanded(
                 child:  Image.asset(
                 'assets/greena.jpg',
                 width: 200,
                 height: 200,
               ),),
                Expanded(
                  child: Image.asset(
                  'assets/vishal.jpg',
                  width: 200,
                  height: 200,
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
