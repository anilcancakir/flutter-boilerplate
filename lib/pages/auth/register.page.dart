import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Register'),
      ),
      body: new SingleChildScrollView(
        child: new Center(
          child: new Text('Hello from Register Page!')
        ),
      ),
    );
  }
}