import 'package:flutter/material.dart';
import 'package:super_todo/domain/auth/email_address.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EmailAddress email = EmailAddress('1');
    print(email);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App'),
        ),
        body: Center(
          child: Container(
            child: Text('My page'),
          ),
        ),
      ),
    );
  }
}
