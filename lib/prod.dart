import 'package:app/app/app.dart';
import 'package:flutter/material.dart';

void main() {
  new App(
    environment: 'production',
    baseUri: 'https://example.com'
  ).run(runApp);
}