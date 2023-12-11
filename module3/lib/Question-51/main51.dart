import 'package:flutter/material.dart';
import 'package:module3/Question-51/display.dart';

void main() => runApp(MyScreen51());

class MyScreen51 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InputNumber',
      home: InputNumbersScreen()
    );
  }
}
class InputNumbersScreen extends StatefulWidget {
  @override
  _InputNumbersScreenState createState() => _InputNumbersScreenState();
}

class _InputNumbersScreenState extends State<InputNumbersScreen> {
  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the first number',
              ),
            ),
            TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the second number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int? firstNumber = int.tryParse(_firstNumberController.text);
                int? secondNumber = int.tryParse(_secondNumberController.text);

                if (firstNumber != null && secondNumber != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayNumbersScreen(
                        firstNumber: firstNumber,
                        secondNumber: secondNumber,
                      ),
                    ),
                  );
                }
              },
              child: Text('Show Numbers'),
            ),
          ],
        ),
      ),
    );
  }
}
