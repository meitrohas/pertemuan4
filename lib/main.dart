import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  MyCheckbox createState() => MyCheckbox();

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Basic'),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Card(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Image(
                image: NetworkImage('https://mncu.ac.id/wp-content/uploads/2022/05/cropped-LOGO-MNC-UNIVERSITY.png'),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Name',
                  hintText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter Your Password',
                  hintText:'Password',
                  border: OutlineInputBorder(),
                ),
              ),
                MyCheckbox(),
                const Text('Accept Terms & Conditions'),
                TextButton(onPressed: (){},
                  child: Text('LOGIN'),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero
                      )
                  ),
                ),

            ],
                ),
          ),
        ),
      ),
      ),
  );
  }
}

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  _MyCheckbox createState() => _MyCheckbox();
}

class _MyCheckbox extends State<MyCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Checkbox(

      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value ?? false;
        });
      },
    );

  }
}