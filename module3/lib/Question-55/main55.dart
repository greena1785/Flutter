import 'package:flutter/material.dart';

void main() => runApp(MyScreen55());

class MyScreen55 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CheckboxTextViewApp(),
    );
  }
}
class CheckboxTextViewApp extends StatefulWidget {
  @override
  _CheckboxTextViewAppState createState() => _CheckboxTextViewAppState();
}

class _CheckboxTextViewAppState extends State<CheckboxTextViewApp> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Text View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _isChecked,
              title: Text('Show/Hide'),
              onChanged: (newValue) {
                setState(() {
                  _isChecked = newValue ?? false;
                });
              },
            ),
            if (_isChecked)
              Text(
                'HELLO WORLD!',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}

