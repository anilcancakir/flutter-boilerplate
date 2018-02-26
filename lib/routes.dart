import 'package:app/pages/about.page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes(Router router) {
    router.define('about', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new AboutPage();
    }));
  }
}