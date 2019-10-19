import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xFF3DCBCB), // Cor de fundo
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
            Container(
              margin: EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 0.0, bottom: 0.0),
              child: Card(
                color: Color(0xFFF1D8CF),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/imgs/robo.gif'),
                    Container(
                      height: (MediaQuery.of(context).size.height * 0.5),
                      child: Column(
                        children: <Widget>[
                          Material(
                            // needed
                            color: Colors.transparent,
                            child: Column(
                              children: <Widget>[
                                InkWell(
                                    onTap: () => {}, // needed
                                    child: Image.asset(
                                        "assets/imgs/house@2x.png",
                                        width: 88,
                                        height: 88)),
                                Text("Entrar")
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 0.0, right: 20, top: 50, bottom: 10.0),
                                child: Material(
                                  // needed
                                  color: Colors.transparent,
                                  child: Column(
                                    children: <Widget>[
                                      InkWell(
                                          onTap: () => {}, // needed
                                          child: Image.asset(
                                              "assets/imgs/sair2.png",
                                              width: 88,
                                              height: 88)),
                                      Text("Sair")
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0, right: 0.0, top: 50, bottom: 10.0),
                                  child: Material(
                                    // needed
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () => {}, // needed
                                      child: Column(
                                        children: <Widget>[
                                          InkWell(
                                              onTap: () => {}, // needed
                                              child: Image.asset(
                                                  "assets/imgs/program.png",
                                                  width: 88,
                                                  height: 88)),
                                          Text("Cadastrar")
                                        ],
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
