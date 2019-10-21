import 'package:flutter/material.dart';
import './../components/LoginForm.dart';
import './../components/DefaultPageComponent.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(Column(
      children: <Widget>[Image.asset('assets/imgs/robo.gif'), LoginForm()],
    ));
  }

  void changePage(String page) {
    print(page);
  }
}
