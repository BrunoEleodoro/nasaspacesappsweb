import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Color(0XFF303030),
          ),
          width: 300,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[],
          ),
        )
      ],
    ));
  }
}
