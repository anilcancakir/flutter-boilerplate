import 'package:app/pages/auth/login.page.dart';
import 'package:app/pages/auth/register.page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class AuthRoutes {
  AuthRoutes(Router router) {
    router.define('auth/login', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new LoginPage();
    }));

    router.define('auth/register', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new RegisterPage();
    }));
  }
}