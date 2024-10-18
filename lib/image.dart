import 'package:flutter/material.dart';

void main() {
  runApp(const MyImage());
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image(
            image: NetworkImage('https://mncu.ac.id/wp-content/uploads/2022/05/cropped-LOGO-MNC-UNIVERSITY.png'),
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