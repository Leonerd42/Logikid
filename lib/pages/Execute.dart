import 'package:flutter/material.dart';
import 'package:logikid/pages/AddInstruction.dart';
import './../components/DefaultPageTest.dart';
import './../components/CustomizedButton.dart';
import './../components/SlideTransition.dart';
class Execute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageTest(
      childBody:  Column(
          children: <Widget>[
            Container(child: Image.asset('assets/imgs/simulador.jpeg',height: 300,), transform: Matrix4.translationValues(0, 0, 0),),
            Container(
               transform: Matrix4.translationValues(15,130, 0),
              child: Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                        Row(
                          children: <Widget>[
                          Container(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 25.0, right: 0, top: 0.0, bottom: 10.0),
                                child: Button('assets/imgs/sair2.png', 'Voltar', 68.0, 68.0,
                                    'voltar', changePage)),
                        ),Container(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left:105, right: 10, top: 0.0, bottom: 10.0),
                                child: Button('assets/imgs/play.png', 'De novo', 68.0, 68.0,
                                    'executar', changePage)),
                                 )],
                        )  
                        ],
                      ),
                    ),          
            ],
            ),
          );
  }

  void changePage(String page, BuildContext ctx) {
    switch (page) {
      case 'voltar':
        Navigator.pop(ctx);
        break;
    //  case 'executar':
     //   Navigator.push(ctx, RotationRoute(page: AddInstruction()));
       // break;
      /*case 'info':
        Navigator.push(ctx, SlideUpRoute(page: InfoPage()));
        break;*/
    }
  }
}