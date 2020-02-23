import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:html';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = new TextEditingController();
  var senhaController = new TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 350,
            height: 350,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    (isLoading) ? LinearProgressIndicator() : SizedBox(),
                    Center(
                        child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Usuario'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: senhaController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Senha'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      minWidth: double.maxFinite,
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });
                        Map<String, String> headers = {
                          'Content-type': 'application/json',
                          'Accept': 'application/json',
                        };
                        var response = await http.post(
                            'https://serverless-master-ecoquest.brunoeleodoroecoquest.now.sh/user/authenticate',
                            headers: headers,
                            body: json.encode({
                              'email': emailController.text,
                              'password': senhaController.text
                            }));
                        // var response = await apiRequest(
                        //     'https://serverless-master-ecoquest.brunoeleodoroecoquest.now.sh/user/authenticate',
                        //     {
                        //       'email': emailController.text,
                        //       'password': senhaController.text
                        //     });

                        // var res = jsonDecode(response);
                        var res = jsonDecode(response.body);
                        if (res['status'] == 200) {
                          window.localStorage['token'] = res['token'];
                          Navigator.pushNamed(context, '/home');
                        } else {
                          Navigator.pushNamed(context, '/home');
                        }
                        setState(() {
                          isLoading = false;
                        });
                      },
                      color: Colors.purple,
                      child: Text('LOGIN'),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
