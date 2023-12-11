import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeekBar Color Changer',
      home: MyScreen58(),
    );
  }
}

class MyScreen58 extends StatefulWidget {
  @override
  _MyScreen58State createState() => _MyScreen58State();
}

class _MyScreen58State extends State<MyScreen58> {
  double redValue = 0.0;
  double greenValue = 0.0;
  double blueValue = 0.0;

  void updateBackgroundColor() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color.fromARGB(
      255,
      redValue.toInt(),
      greenValue.toInt(),
      blueValue.toInt(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('SeekBar Color Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: backgroundColor,
              width: double.infinity,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                'Color Preview',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text('Red: ${redValue.toInt()}'),
            Slider(
              value: redValue,
              onChanged: (value) {
                setState(() {
                  redValue = value;
                  updateBackgroundColor();
                });
              },
              min: 0.0,
              max: 255.0,
            ),
            Text('Green: ${greenValue.toInt()}'),
            Slider(
              value: greenValue,
              onChanged: (value) {
                setState(() {
                  greenValue = value;
                  updateBackgroundColor();
                });
              },
              min: 0.0,
              max: 255.0,
            ),
            Text('Blue: ${blueValue.toInt()}'),
            Slider(
              value: blueValue,
              onChanged: (value) {
                setState(() {
                  blueValue = value;
                  updateBackgroundColor();
                });
              },
              min: 0.0,
              max: 255.0,
            ),
          ],
        ),
      ),
    );
  }
}
