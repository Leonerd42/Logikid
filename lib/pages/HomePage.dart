import 'package:flutter/material.dart';
import './../components/CustomizedButton.dart';
import './../components/DefaultPageComponent.dart';
import './../components/SlideTransition.dart';
import './LoginPage.dart';
import 'dart:io';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(
      childBody: Column(
        children: <Widget>[
          Image.asset('assets/imgs/robo.gif'),
          Column(
            children: <Widget>[
              new Button('assets/imgs/house@2x.png', 'Entrar', 88.0, 88.0,
                  'login', changePage),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 0.0, right: 20, top: 50, bottom: 10.0),
                    child: new Button('assets/imgs/sair2.png', 'Sair', 88.0,
                        88.0, 'close', closeApp),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 0.0, top: 50, bottom: 10.0),
                      child: new Button('assets/imgs/program.png', 'Cadastrar',
                          88.0, 88.0, 'register', changePage))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void closeApp(String _, BuildContext c) {
    exit(0);
  }

  void changePage(String page, BuildContext ctx) {
    switch (page) {
      case 'login':
        Navigator.push(ctx, ScaleRoute(page: LoginPage()));
        //Navigator.of(ctx).pushNamed('/login');
        break;
      case 'close': //TODO fechar o aplicativo
        Navigator.of(ctx).pushNamed('/choose-action');
        break;
      case 'register':
        Navigator.of(ctx).pushNamed('/register'); // Changer here to go to pages
        break;
    }
  }
}
