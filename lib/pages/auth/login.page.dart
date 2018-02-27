import 'package:app/helpers.dart';
import 'package:app/support/validators/email.validator.dart';
import 'package:app/support/validators/max.validator.dart';
import 'package:app/support/validators/min.validator.dart';
import 'package:app/support/validators/required.validator.dart';
import 'package:app/support/validators/string.validator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoginPageState();
  }
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _LoginData data = new _LoginData();

  void submit(BuildContext context) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      print('Printing the submitted data.');
      print('Email: ${data.email}');
      print('Password: ${data.password}');

      redirect(context, 'home');
    }
  }

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
                key: _formKey,
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        hintText: 'you@example.com',
                        labelText: 'E-mail Address'
                      ),
                      validator: (String value) {
                        return validate(value, 'E-mail Address', [
                          new RequiredValidator(),
                          new EmailValidator(),
                          new MaxValidator(63)
                        ]);
                      },
                      onSaved: (String value) {
                        data.email = value;
                      }
                    ),
                    new TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        hintText: 'you@example.com',
                        labelText: 'Enter your password'
                      ),
                      validator: (String value) {
                        return validate(value, 'Password', [
                          new RequiredValidator(),
                          new StringValidator(),
                          new MinValidator(8)
                        ]);
                      },
                      onSaved: (String value) {
                        data.password = value;
                      }
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
                        onPressed: () => this.submit(context),
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
                        onPressed: () {
                          navigate(context, 'auth/register');
                        },
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