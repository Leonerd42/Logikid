import 'package:flutter/material.dart';

import './../components/CustomizedButton.dart';
import './../components/DefaultPageComponent.dart';
import './../components/LoginForm.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(
      childBody: Column(
        children: <Widget>[
          Image.asset('assets/imgs/robo.gif'),
          Container(
            padding: EdgeInsets.all(30.0),
            child: LoginForm(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, right: 20, top: 0.0, bottom: 10.0),
                  child: Button('assets/imgs/sair2.png', 'Voltar', 68.0, 68.0,
                      'voltar', changePage)),
              Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, right: 20, top: 0.0, bottom: 10.0),
                  child: Button('assets/imgs/play.png', 'Entrar', 88.0, 88.0,
                      'entrar', changePage)),
            ],
          )
        ],
      ),
    );
  }

  void changePage(String page, BuildContext ctx) {
    switch (page) {
      case 'voltar':
        Navigator.pop(ctx);
        break;
      case 'entrar':
        break;
    }
  }
}
