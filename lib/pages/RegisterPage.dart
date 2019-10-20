import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

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
              height: (MediaQuery
                  .of(context)
                  .size
                  .height * 0.8),
              margin: EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 0.0, bottom: 0.0),
              child: Card(
                color: Color(0xFFF1D8CF),
                // Coluna dentro do card
                child: Text('Register Page'),
              ),
            )
          ],
        ));
  }

  void changePage(String page) {
    print(page);
  }
}