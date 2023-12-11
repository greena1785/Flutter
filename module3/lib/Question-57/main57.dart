import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen57());
}

class MyScreen57 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChanger(),
    );
  }
}

class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color _selectedColor = Colors.red; // Initial color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Changer'),
      ),
      body:    Container(
        width: double.infinity,
        height: double.infinity,
        color: _selectedColor,
        child:  RadioGroup(
          labels: ['Red', 'Green', 'Blue'],
          onSelected: (int index) {
            setState(() {
              switch (index) {
                case 0:
                  _selectedColor = Colors.red;
                  break;
                case 1:
                  _selectedColor = Colors.green;
                  break;
                case 2:
                  _selectedColor = Colors.blue;
                  break;
              }
            });
          },
        ),
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  final List<String> labels;
  final Function(int) onSelected;

  RadioGroup({required this.labels, required this.onSelected});

  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.labels.length,
            (index) => Row(
          children: [
            Radio(
              value: index,
              groupValue: _selectedIndex,
              onChanged: (value) {
                setState(() {
                  _selectedIndex = value as int;
                  widget.onSelected(_selectedIndex);
                });
              },
            ),
            Text(widget.labels[index]),
          ],
        ),
      ),
    );
  }
}
