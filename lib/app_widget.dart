import 'package:flutter/material.dart';
import 'package:flutter_challenge_1/pages/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(primarySwatch: Colors.red, brightness: Brightness.light),
        initialRoute: '/',
        routes: {'/': (context) => LoginPage()});
  }
}
