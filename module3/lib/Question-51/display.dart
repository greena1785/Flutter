import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayNumbersScreen extends StatelessWidget {
  final int firstNumber;
  final int secondNumber;

  DisplayNumbersScreen({required this.firstNumber, required this.secondNumber});

  @override
  Widget build(BuildContext context) {
    List<int> numbersList = [];

    for (int i = firstNumber + 1; i < secondNumber; i++) {
      numbersList.add(i);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers Between'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: numbersList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(numbersList[index].toString()),
            );
          },
        ),
      ),
    );
  }
}
