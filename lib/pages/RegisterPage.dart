import 'package:flutter/material.dart';

import './../components/DefaultPageComponent.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPageComponent(
      childBody: Text("pagina para registrar"),
    );
  }

  void changePage(String page) {
    print(page);
  }
}
