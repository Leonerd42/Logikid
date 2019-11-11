import 'package:flutter/material.dart';
import 'package:logikid/pages/AddInstruction.dart';
import 'package:logikid/pages/ChooseAction.dart';
import 'package:logikid/pages/Program.dart';
import './../components/DefaultPageTest.dart';
import './../components/CustomizedButton.dart';
import './../components/SlideTransition.dart';

class ConfirmInstruction extends StatelessWidget {
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
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 40, right: 10,left: 10),
                child: TextFormField(readOnly: true,
                initialValue: 'Mover para o centro com o valor de 1,1 para x e y, respectivamente ',
                maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(fontSize: 25),
                ),
            ),
            
            Padding(
              padding: EdgeInsets.only(top: 10, right: 20,left: 20,bottom: 10),
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
      case 'executar':
        Navigator.push(ctx, RotationRoute(page: Program()));
        break;
      /*case 'info':
        Navigator.push(ctx, SlideUpRoute(page: InfoPage()));
        break;*/
    }
  }
}