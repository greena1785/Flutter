import 'package:flutter/material.dart';

void main() => runApp(MyScreen52());

class MyScreen52 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:CalculatorApp(),
    );
  }
}
class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  TextEditingController _number1Controller = TextEditingController();
  TextEditingController _number2Controller = TextEditingController();
  String _result = '';
  String _operation = 'Add';

  void _calculateResult() {
    double num1 = double.tryParse(_number1Controller.text) ?? 0;
    double num2 = double.tryParse(_number2Controller.text) ?? 0;
    double result = 0;

    setState(() {
      switch (_operation) {
        case 'Add':
          result = num1 + num2;
          break;
        case 'Subtract':
          result = num1 - num2;
          break;
        case 'Multiply':
          result = num1 * num2;
          break;
        case 'Divide':
          if (num2 != 0) {
            result = num1 / num2;
          } else {
            _result = 'Cannot divide by zero';
            return;
          }
          break;
      }

      _result = 'Result: $result';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),

      
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Select an operation:'),
              RadioListTile(
                title: Text('Add'),
                value: 'Add',
                groupValue: _operation,
                onChanged: (value) {
                  setState(() {
                    _operation = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text('Subtract'),
                value: 'Subtract',
                groupValue: _operation,
                onChanged: (value) {
                  setState(() {
                    _operation = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text('Multiply'),
                value: 'Multiply',
                groupValue: _operation,
                onChanged: (value) {
                  setState(() {
                    _operation = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text('Divide'),
                value: 'Divide',
                groupValue: _operation,
                onChanged: (value) {
                  setState(() {
                    _operation = value!;
                  });
                },
              ),
              SizedBox(height: 16),
              TextField(
                controller: _number1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Number 1'),
              ),
              TextField(
                controller: _number2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Number 2'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _calculateResult,
                child: Text('Calculate'),
              ),
              SizedBox(height: 16),
              Text(
                _result,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      )
    );
  }
}

