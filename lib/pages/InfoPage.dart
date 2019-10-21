import 'package:flutter/material.dart';
import './../components/DefaultPageComponent.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(Text('pagina de informações'));
  }

  void changePage(String page) {
    print(page);
  }
}
