import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:super_todo/injection.dart';
import 'package:super_todo/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(AppWidget());
}
