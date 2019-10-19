import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xFF3DCBCB), // Cor de fundo
        body: Column(
          children: <Widget>[
            // Texto da tela inicial
            Container(
                child: Text(
                  'LOGIKID',
                  style: TextStyle(
                      fontFamily: 'Lucida Handwriting', fontSize: 30.0),
                ),
                margin: EdgeInsets.only(
                    left: 0.0, right: 0.0, top: 50, bottom: 10.0)),
            // Card
            Container(
              height: (MediaQuery.of(context).size.height * 0.8),
              margin: EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 0.0, bottom: 0.0),
              child: Card(
                color: Color(0xFFF1D8CF),
                // Coluna dentro do card
                child: Column(
                  children: <Widget>[
                    // Animação do robo
                    Image.asset('assets/imgs/robo.gif'),
                    // Botões
                    Column(
                      children: <Widget>[
                        new Button('assets/imgs/house@2x.png','Entrar',88.0,88.0,''),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 0.0, right: 20, top: 50, bottom: 10.0),
                              child: new Button('assets/imgs/sair2.png','Sair',88.0,88.0,''),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20.0,
                                    right: 0.0,
                                    top: 50,
                                    bottom: 10.0),
                                child: new Button('assets/imgs/program.png','Cadastrar',88.0,88.0,''))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class Button extends StatelessWidget {
  final String path, text, action;
  final width, height;

  Button(
      this.path,
      this.text,
      this.width,
      this.height,
      this.action);

  @override
  Widget build(BuildContext context) {
    return Material(
      // needed
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          InkWell(
              onTap: () => {}, // needed
              child: Image.asset(path, width: width, height: height)),
          Text(text ,style: TextStyle(fontSize: 23.0),)
        ],
      ),
    );
  }
}
