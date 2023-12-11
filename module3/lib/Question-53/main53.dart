import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyScreen53());

class MyScreen53 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackgroundChangerApp',
      home: BackgroundChangerApp(),
    );
  }
}
class BackgroundChangerApp extends StatefulWidget {
  @override
  _BackgroundChangerAppState createState() => _BackgroundChangerAppState();
}

class _BackgroundChangerAppState extends State<BackgroundChangerApp> {
  Color _backgroundColor = Colors.white; // Initial background color

  void _changeBackgroundColor() {
    // Generate a random color
    final random = Random();
    Color newColor = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );

    setState(() {
      _backgroundColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Changer'),
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Click the button to change the background color:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _changeBackgroundColor,
                child: Text('Change Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
