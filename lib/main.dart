import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final EmailAddress email = EmailAddress('1');
    // print(email);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App'),
        ),
        body: const Center(
          child: Text('My page'),
        ),
      ),
    );
  }
}
