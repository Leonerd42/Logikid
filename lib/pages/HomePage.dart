import 'package:flutter/material.dart';
import './../components/CustomizedButton.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xFF3DCBCB),
        body: Column(
          children: <Widget>[
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
              height: (size.height * 0.8),
              margin: EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 0.0, bottom: 0.0),
              child: Card(
                color: Color(0xFFF1D8CF),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/imgs/robo.gif'),
                    Column(
                      children: <Widget>[
                        new Button('assets/imgs/house@2x.png','Entrar',88.0,88.0,'login',changePage),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 0.0, right: 20, top: 50, bottom: 10.0),
                              child: new Button('assets/imgs/sair2.png','Sair',88.0,88.0,'close',changePage),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20.0,
                                    right: 0.0,
                                    top: 50,
                                    bottom: 10.0),
                                child: new Button('assets/imgs/program.png','Cadastrar',88.0,88.0,'register',changePage))
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

  void changePage(String page, BuildContext ctx){
    switch(page) {
      case 'login':
        Navigator.of(ctx).pushNamed('/login');
        break;
      case 'close':
        Navigator.of(ctx).pushNamed('/choose-action');
        break;
      case 'register':
        Navigator.of(ctx).pushNamed('/register');  // Changer here to go to pages
        break;
    }
  }
}


