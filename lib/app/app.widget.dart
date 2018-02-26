import 'package:app/app/app.dart';
import 'package:app/pages/home.page.dart';
import 'package:fluro/fluro.dart';
import 'package:app/routes.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  AppWidget() {
    // Create a router.
    final router = new Router();

    // Init routes.
    new Routes(router);

    // Set app router.
    App.router = router;
  }

  @override
  State<StatefulWidget> createState() {
    return new _AppWidgetState();
  }
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'App',
      home: new HomePage(),
    );
  }
}