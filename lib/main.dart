import 'package:flutter/material.dart';
import 'package:web/pages/home.dart';
import 'package:web/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: LoginPage(),
      routes: {'/home': (context) => HomePage()},
    );
  }
}
