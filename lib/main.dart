import 'package:flutter/material.dart';
import './pages/HomePage.dart';
import './pages/ChooseAction.dart';
import './pages/LoginPage.dart';
import './pages/RegisterPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logikid',
      home: HomePage(),
      routes: {
        '/choose-action': (ctx) => ChooseAction(),
        '/login': (ctx) => LoginPage(),
        '/register': (ctx) => RegisterPage()
      },
    );
  }
}
