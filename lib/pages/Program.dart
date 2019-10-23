import 'package:flutter/material.dart';
import './../components/DefaultPageComponent.dart';

class Program extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(childBody: Text('Program'),);
  }

  void changePage(String page) {
    print(page);
  }
}