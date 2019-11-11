import 'package:flutter/material.dart';
import 'package:logikid/pages/AddInstruction.dart';
import 'package:logikid/pages/ChooseAction.dart';
import './../components/DefaultPageTest.dart';
import './../components/CustomizedButton.dart';
import './../components/SlideTransition.dart';
class Program extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageTest(
      childBody:  Column(
          children: <Widget>[
            Row(crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
              Transform.rotate(angle: 0.2, child:
                  Container(child: Image.asset('assets/imgs/robo.gif',scale: 2.7,), transform: Matrix4.translationValues(90, 30, 0),),
              ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, right: 20,left: 20,bottom: 20),
              child: Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0, right: 20, top: 0.0, bottom: 10.0),
                                child: Button('assets/imgs/add.png', 'Adicionar', 68.0, 68.0,
                                    'adicionar', changePage)),
                        ),Container(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left:65, right: 00, top: 0.0, bottom: 10.0),
                                child: Button('assets/imgs/program.png', 'Programa', 68.0, 68.0,
                                    'programa', changePage)),
                        )],
                        )
                        
                      ],)    ,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, right: 20,left: 20,bottom: 20),
              child: Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 25.0, right: 0, top: 0.0, bottom: 10.0),
                                child: Button('assets/imgs/sair2.png', 'Sair', 68.0, 68.0,
                                    'sair', changePage)),
                        ),Container(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left:105, right: 10, top: 0.0, bottom: 10.0),
                                child: Button('assets/imgs/play.png', 'Executar', 68.0, 68.0,
                                    'executar', changePage)),
                        )],
                        )
                        
                      ],)    ,
            )              
            ],),
          );
  }

  void changePage(String page, BuildContext ctx) {
    switch (page) {
      case 'sair':
        Navigator.pop(ctx);
        //Navigator.of(ctx).pushNamed('/login');
        break;
      case 'adicionar':
        Navigator.push(ctx, RotationRoute(page: AddInstruction()));
        break;
      case 'programa':
        Scaffold.of(ctx).openDrawer();
        //Navigator.push(ctx, SlideUpRoute(page: InfoPage()));
        break;
    }
  }
}