import 'package:flutter/material.dart';

void main() {
  runApp(const MyCheckedBox());
}

class MyCheckedBox extends StatefulWidget {
  const MyCheckedBox({super.key});

  @override
  _MyCheckedBoxState createState() => _MyCheckedBoxState();
}

class _MyCheckedBoxState extends State<MyCheckedBox>{
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Klik Check Box'),
              Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value){
              setState(() {
                _isChecked = value ?? false;
              });
              },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
        ),
      ),
    );

  }
}