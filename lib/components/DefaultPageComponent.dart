import 'package:flutter/material.dart';

class DefaultPageComponent extends StatelessWidget {

  final Widget childBody;

  DefaultPageComponent(this.childBody);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
        backgroundColor: Color(0xFF3DCBCB),
        body: Center(
          child: Column(
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
                width: (size.height * 0.8),
                margin: EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 0.0, bottom: 0.0),
                child: Card(
                  color: Color(0xFFF1D8CF),
                  child: childBody,
                ),
              ),
            ],
          ),
        ));
  }

  void changePage(String page) {
    print(page);
  }
}