import 'package:flutter/material.dart';
import 'package:alarmyx/pages/alarm.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.deepOrange,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => alarm(),
    },
  ));
}