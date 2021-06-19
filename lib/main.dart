import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:super_todo/injection.dart';

import 'domain/auth/value_objects.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EmailAddress email = EmailAddress('email@email.com');
    // ignore: avoid_print
    print(email.value.getOrElse(() => 'Wrong kind of email'));

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
