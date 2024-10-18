import 'package:flutter/material.dart';

void main() {
  runApp(const MyText());
}

class MyText extends StatelessWidget {
  const MyText({super.key});

@override
Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
          child: Text(
            "Some exciting text",
            style: TextStyle(
            color: Colors.red, fontSize: 14),
            textAlign: TextAlign.center,
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