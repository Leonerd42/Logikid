import 'package:flutter/material.dart';
import 'package:logikid/pages/ChooseAction.dart';
import './../components/CustomizedButton.dart';

import './../components/DefaultPageComponent.dart';

import './../components/SlideTransition.dart';


class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(
      childBody: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Container(child: Text("Informações", textScaleFactor: 3,),transform: Matrix4.translationValues(10.0, -0.0, 0.0,),),
              Container(child: Image.asset('assets/imgs/robo.gif',scale: 3,), transform: Matrix4.translationValues(-80, 20, 0),)
              
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                child: Text("O aplicativo tem como objetivo ensinar lógica de programação de um jeito dinâmico para crianças e adolescentes.", 
                textScaleFactor: 1.8,
                textAlign: TextAlign.justify,
                ),
                 margin: EdgeInsets.all(10),                
              ),
              Row(children: <Widget>[
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                          children: <Widget>[
                            Container(
                              child: Text("Nomes",textScaleFactor: 1.9,textAlign: TextAlign.left,),
                              margin: EdgeInsets.only(right: 80),
                            ),
                            Container(
                              child: Text("Leonardo Oliveira",textScaleFactor: 1.7,),
                              margin: EdgeInsets.only(right:10),
                            ),Container(
                              child: Text("Pedro Barros",textScaleFactor: 1.7,),
                              margin: EdgeInsets.only(right:60),
                            ),Container(
                              child: Text("Tania Shimabukuro",textScaleFactor: 1.7,),
                              margin: EdgeInsets.only(left:5),
                            )
                          ],
                        ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text("RA",textScaleFactor: 1.9,),
                      ),
                      Container(
                        child: Text("171025903",textScaleFactor: 1.7,),
                      ),
                      Container(
                        child: Text("171022548",textScaleFactor: 1.7,),
                      ),
                      Container(
                        child: Text("171025717",textScaleFactor: 1.7,),
                      ),
                    ],
                  ),
                ),                
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, right: 250, top: 0.0, bottom: 10.0),
                      child: Button('assets/imgs/sair2.png', 'Voltar', 68.0, 68.0,
                          'voltar', changePage)),
                ],
              )
            ],  
          ),          
        ],
      ),
      )
      
      
    );
  }

  void changePage(String page, BuildContext ctx) {
    switch (page) {
      case 'voltar':
        Navigator.push(ctx, SlideLeftRoute(page: ChooseAction()));
        break;
    }
  }
}


