import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:testdartffi/testdartffi.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _greetingmessage = 'Unknown';

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(_greetingmessage),
              RaisedButton( child: Text("Press to get greet"), onPressed: (){
                setState(() {
                  _greetingmessage = sayhellotouser("Anurag Vohra");
                });
              },)
            ],
          )
        ),
      ),
    );
  }
}
