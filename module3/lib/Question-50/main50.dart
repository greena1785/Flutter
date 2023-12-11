import 'package:flutter/material.dart';

void main() => runApp(MyScreen50());

class MyScreen50 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:  ReverseNumberApp()
    );
  }
}
class ReverseNumberApp extends StatefulWidget {
  @override
  _ReverseNumberAppState createState() => _ReverseNumberAppState();
}

class _ReverseNumberAppState extends State<ReverseNumberApp> {
  TextEditingController _inputController = TextEditingController();
  String _reversedNumber = '';

  void _reverseNumber() {
    String inputText = _inputController.text;
    String reversedText = inputText.split('').reversed.join('');
    setState(() {
      _reversedNumber = reversedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _inputController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _reverseNumber,
              child: Text('Reverse'),
            ),
            SizedBox(height: 20),
            Text(
              'Reversed Number: $_reversedNumber',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
