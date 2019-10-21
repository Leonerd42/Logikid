import 'package:flutter/material.dart';

import './../components/DefaultPageComponent.dart';
import './../components/LoginForm.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(
      childBody: Column(
        children: <Widget>[Image.asset('assets/imgs/robo.gif'), LoginForm()],
      ),
    );
  }

  void changePage(String page) {
    print(page);
  }
}
