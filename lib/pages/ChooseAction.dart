import 'package:flutter/material.dart';
import './../components/DefaultPageComponent.dart';

class ChooseAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(childBody: Text('funciona lindamente'),);
  }

  void changePage(String page) {
    print(page);
  }
}
