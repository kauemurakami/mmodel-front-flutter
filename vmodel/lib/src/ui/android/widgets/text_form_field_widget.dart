import 'package:flutter/material.dart';

class TextFormCustomWidget extends StatelessWidget {

  final String label;
  final String Function(String) validate;
  final void Function(String) onSaved;
  final int maxLength;
  final TextInputType type;
  final bool obscure;
  TextFormCustomWidget(
      {@required this.label,
      this.validate,
      @required this.maxLength,
      @required this.type,
      this.obscure = false,
      @required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.type,
      obscureText: this.obscure,
      onSaved: this.onSaved,
      decoration: InputDecoration(labelText: this.label),
      cursorColor: Colors.white,
      enableSuggestions: true,
      maxLength: this.maxLength,
      validator: this.validate,
    );
  }
}
