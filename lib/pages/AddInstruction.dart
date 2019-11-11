import 'package:flutter/material.dart';
import 'package:logikid/pages/ConfirmInstruction.dart';
import 'package:logikid/pages/HomePage.dart';
import 'package:logikid/pages/LoginPage.dart';
import './../components/CustomizedButton.dart';

import './../components/DefaultPageComponent.dart';

import './../components/SlideTransition.dart';

class AddInstruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(
      childBody: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Transform.rotate(angle: 0.2, child:
                  Container(child: Image.asset('assets/imgs/robo.gif',scale: 3,), transform: Matrix4.translationValues(-20, 10, 0),),
              ),
              Column(children: <Widget>[
                Container(child: Text("Adicionar", textScaleFactor:2,),transform: Matrix4.translationValues(-80, -0.0, 0.0,),),
                Container(child: Text("Instrução", textScaleFactor: 2,),transform: Matrix4.translationValues(-80.0, -0.0, 0.0,),),
              ],),
            ],
          ),
          FormTest(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, right: 10, top: 0.0, bottom: 10.0),
                  child: Button('assets/imgs/sair2.png', 'Cancelar', 68.0, 68.0,
                      'cancelar', changePage)),
              Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, right: 10, top: 0.0, bottom: 10.0),
                  child: Button('assets/imgs/recomecar.png', 'Recomecar', 68.0, 68.0,
                      'recomecar', reset)),
              Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 0.0, bottom: 10.0),
                  child: Button('assets/imgs/play.png', 'Confirmar', 68.0, 68.0,
                      'confirmar', changePage)),
            ],
          )
        ],
      ),
      ) 
    );
  }

  void changePage(String page, BuildContext ctx) {
    switch (page) {
      case 'cancelar':
        Navigator.pop(ctx);
        break;
      //case 'recomecar':
       //Navigator.push(ctx, ScaleRoute(page: RegisterPage()));
        //break;
      case 'confirmar':
        Navigator.push(ctx, SlideLeftRoute(page: ConfirmInstruction()));
        break;
    }
  }
}
void reset(){

}

class FormTest extends StatelessWidget {
   var dropdownValue = {'acao':'Mover', 'posicao': 'Centro'};
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(child: Text("Ação",textScaleFactor: 2.5,), transform: Matrix4.translationValues(-8, 0, 0),),
              Container(transform: Matrix4.translationValues(35, 0, 0), color: Colors.white,
                child:DropdownButton<String>(
                value: dropdownValue['acao'].toString(),
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                underline: Container(
                height: 3,
              ),
              style: TextStyle(fontSize: 30,color: Colors.black),
                onChanged: (String newValue) {
                    dropdownValue['acao'] = newValue;
                },
                items: <String>['Mover', 'Posicionar', 'Virar', ]
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                  .toList(),
              ),)        
            ],
          ),
          Column(
            children: <Widget>[
              Container(child: Text("Posicao",textScaleFactor: 2.5,), transform: Matrix4.translationValues(-8, 0, 0),),
              Container(transform: Matrix4.translationValues(35, 0, 0), color: Colors.white,
                child:DropdownButton<String>(
                value: dropdownValue['posicao'].toString(),
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                underline: Container(
                height: 3,
              ),
              style: TextStyle(fontSize: 30,color: Colors.black),
                onChanged: (String newValue) {
                    dropdownValue['posicao'] = newValue;
                },
                items: <String>['Parte Superior','Centro','Parte Inferior' ]
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                  .toList(),
              ),)        
            ],
          ),
          Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                      Container(child:Text("Valor X",textScaleFactor: 2.5,), transform: Matrix4.translationValues(15, 0, 0)),
                      Container(
                        height: 50,
                        width: 100,
                        margin: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 35.0, right: 15.0),
                        child: TextFormField(
                          
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            labelText: "1",
                            filled: true,
                            fillColor: Colors.white,
                            //fillColor: Colors.green
                          ),
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                  ],
                ), 
                Column(
                  children: <Widget>[
                      Text("Valor Y",textScaleFactor: 2.5,),
                      Container(
                        height: 50,
                        width: 100,
                        margin: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 15.0, right: 15.0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            labelText: "1",
                            filled: true,
                            fillColor: Colors.white,
                            //fillColor: Colors.green
                          ),
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                  ],
                ), 
                ]
              ),       
                  
        ],
      ),
    );
  }
}

