import 'package:flutter/material.dart';
import 'package:logikid/pages/HomePage.dart';
import 'package:logikid/pages/LoginPage.dart';
import './../components/CustomizedButton.dart';

import './../components/DefaultPageComponent.dart';

import './../components/SlideTransition.dart';


class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(
      childBody: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Container(child: Text("Cadastro", textScaleFactor: 3,),transform: Matrix4.translationValues(30.0, -0.0, 0.0,),),
              Container(child: Image.asset('assets/imgs/robo.gif',scale: 3,), transform: Matrix4.translationValues(-55, 20, 0),)
              
            ],
          ),
          FormTest(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, right: 20, top: 0.0, bottom: 10.0),
                  child: Button('assets/imgs/sair2.png', 'Cancelar', 68.0, 68.0,
                      'cancelar', changePage)),
              Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, right: 20, top: 0.0, bottom: 10.0),
                  child: Button('assets/imgs/recomecar.png', 'Recomecar', 68.0, 68.0,
                      'recomecar', changePage)),
              Padding(
                  padding: EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 0.0, bottom: 10.0),
                  child: Button('assets/imgs/play.png', 'Concluir', 88.0, 88.0,
                      'concluir', changePage)),
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
        Navigator.push(ctx, SlideLeftRoute(page: HomePage()));
        break;
      case 'recomecar':
       Navigator.push(ctx, ScaleRoute(page: RegisterPage()));
        break;
      case 'concluir':
        Navigator.push(ctx, SlideLeftRoute(page: LoginPage()));
        break;
    }
  }
}


class FormTest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //nome
          Text("Nome",textScaleFactor: 2,),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 15.0, right: 15.0),
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Coloque o seu nome",
                filled: true,
                fillColor: Colors.white,
                //fillColor: Colors.green
              ),
              validator: (val) {
                if(val.length==0) {
                  return "Nome não pode ser vazio";
                }else{
                  return null;
                }
              },
              keyboardType: TextInputType.text,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
            ),
          ),  
          //email
          Text("Email",textScaleFactor: 2,),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 15.0, right: 15.0),
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Coloque o seu email",
                filled: true,
                fillColor: Colors.white,
                //fillColor: Colors.green
              ),
              validator: (val) {
                if(val.length==0) {
                  return "Email não pode ser vazio";
                }else{
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
            ),
          ),
          //senha
          Text("Senha",textScaleFactor: 2,),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 15.0, right: 15.0),
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Coloque o sua senha",
                filled: true,
                fillColor: Colors.white,
                //fillColor: Colors.green
              ),
              validator: (val) {
                if(val.length==0) {
                  return "Senha não pode ser vazia";
                }else{
                  return null;
                }
              },
              keyboardType: TextInputType.visiblePassword,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
            ),
          ), 
          Container(
            width: 400,
            height: 150,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                      Text("Idade",textScaleFactor: 2,),
                      Container(
                        width: 100,
                        margin: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 15.0, right: 15.0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            labelText: "Idade",
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
                    Container(
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Text("Sexo",textScaleFactor: 2,),
                          ListTile(
                            title: const Text('Feminino'),
                            leading: Radio(
                              value: "Feminino",
                              //groupValue: _sexo,
                            ),
                          ),
                          ListTile(
                            title: const Text('Masculino'),
                            leading: Radio(
                              value: "Masculino",
                              //groupValue: _sexo,
                            ),
                          ),
                        ], 
                      ),
                    ),
                  ],
                )
              ],
            ),
          )                     
        ],
      ),
    );
  }
}

