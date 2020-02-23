import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[800],
          ),
          width: 300,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.question_answer),
                title: Text('Desafios'),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
