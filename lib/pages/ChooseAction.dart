import 'package:flutter/material.dart';

import './../pages/InfoPage.dart';
import './../pages/Program.dart';

import './../components/DefaultPageComponent.dart';
import './../components/CustomizedButton.dart';
import './../components/SlideTransition.dart';

class ChooseAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(childBody: Column(
      children: <Widget>[
        Image.asset('assets/imgs/robo.gif'),
        Column(
          children: <Widget>[
            new Button('assets/imgs/play.png', 'Começar', 88.0, 88.0,
                'comecar', changePage),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, right: 20, top: 50, bottom: 10.0),
                  child: new Button('assets/imgs/sair2.png', 'Voltar', 88.0,
                      88.0, 'back', changePage),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 0.0, top: 50, bottom: 10.0),
                    child: new Button('assets/imgs/info.png', 'Informações',
                        88.0, 88.0, 'info', changePage))
              ],
            ),
          ],
        ),
      ],
    ),);
  }

  void changePage(String page, BuildContext ctx) {
    switch (page) {
      case 'comecar':
        Navigator.push(ctx, RotationRoute(page: Program()));
        //Navigator.of(ctx).pushNamed('/login');
        break;
      case 'back':
        Navigator.pop(ctx);
        break;
      case 'info':
        Navigator.push(ctx, SlideUpRoute(page: InfoPage()));
        break;
    }
  }
}
