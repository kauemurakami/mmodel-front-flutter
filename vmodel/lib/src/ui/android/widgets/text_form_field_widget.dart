import 'package:flutter/material.dart';

class TextFormCustomWidget extends StatelessWidget {
  final String label;
  final String Function(String) validate;

  TextFormCustomWidget({@required this.label, @required this.validate});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// modelo.nome = value
                },
                decoration: InputDecoration(labelText: "Nome"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 20,
                validator: (value) {
                  if (value.length < 3) {
                    return "Insira um nome válido";
                  } else
                    return null;
                },
              );
  }
}