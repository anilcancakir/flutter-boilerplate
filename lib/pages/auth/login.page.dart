import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Container(
              height: screenSize.height / 3,
              padding: new EdgeInsets.only(
                bottom: 20.0
              ),
              color: Colors.blue,
              alignment: Alignment.bottomCenter,
              child: new Text(
                'App',
                style: new TextStyle(
                  fontSize: 36.0,
                  color: Colors.white
                ),
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Form(
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                        hintText: 'you@example.com',
                        labelText: 'Mail or Telephone'
                      ),
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        hintText: 'you@example.com',
                        labelText: 'Password'
                      ),
                      obscureText: true,
                    ),
                    new Container(
                      width: screenSize.width,
                      child: new RaisedButton(
                        child: new Text(
                          'Login',
                          style: new TextStyle(
                            color: Colors.white
                          ),
                        ),
                        onPressed: () => {},
                        color: Colors.blue,
                      ),
                      margin: new EdgeInsets.only(
                        top: 20.0
                      ),
                    ),
                    new Container(
                      width: screenSize.width,
                      child: new FlatButton(
                        child: new Text(
                          'Register for App',
                        ),
                        onPressed: () => {},
                      ),
                      margin: new EdgeInsets.only(
                        top: 20.0
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}