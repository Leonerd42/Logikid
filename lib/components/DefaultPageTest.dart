import 'package:flutter/material.dart';
import './../components/CustomizedButton.dart';

class DefaultPageTest extends StatelessWidget {

  final Widget childBody;

  DefaultPageTest({this.childBody});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
        backgroundColor: Color(0xFF3DCBCB),
        drawer: Drawer(
                  // Add a ListView to the drawer. This ensures the user can scroll
                  // through the options in the drawer if there isn't enough vertical
                  // space to fit everything.
                  child: ListView(
                    // Important: Remove any padding from the ListView.
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      Container(
                        height: 100,
                        child: DrawerHeader(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text('Programa', textScaleFactor: 2,),
                          decoration: BoxDecoration(
                            color: Color(0xFF3DCBCB),
                          ),
                        ),
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 200.0,),
                          border: OutlineInputBorder(),
                          labelText: "print(''Hello Word!!'');",    
                        ),
                        style: new TextStyle(
                          fontSize: 30.0,
                          height: 2.0,
                          color: Colors.black                  
                        )
                        
                      ),

                      Row(children: <Widget>[
                        Padding(
                                padding: EdgeInsets.only(
                                    left:35, right: 00, top: 10.0, bottom: 10.0),
                                child: Button('assets/imgs/sair2.png', 'Excluir', 68.0, 68.0,
                                    'excluir', changePage)),
                        Padding(
                                padding: EdgeInsets.only(
                                    left:65, right: 00, top: 10.0, bottom: 10.0),
                                child: Button('assets/imgs/repair.png', 'Modificar', 68.0, 68.0,
                                    'modificar', changePage)),
                      ],),

                    ],
                  ),
                ),
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