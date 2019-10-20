import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'What do people call you?',
              labelText: 'Email*',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'What do people call you?',
              labelText: 'Password*',

            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                print('Botão pressionado');
                // Validate will return true if the form is valid, or false if
                // the form is invalid.

              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
