import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String path, text, action;
  final width, height;
  final Function changePage;

  Button(this.path, this.text, this.width, this.height, this.action,
      this.changePage);

  @override
  Widget build(BuildContext context) {
    return Material(
      // needed
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          InkWell(
              onTap: () {
                changePage(action, context);
              }, // needed
              child: Image.asset(path, width: width, height: height)),
          Text(
            text,
            style: TextStyle(fontSize: 23.0),
          )
        ],
      ),
    );
  }
}
