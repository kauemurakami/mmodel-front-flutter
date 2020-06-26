import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:vmodel/src/ui/android/contratantes_cadastrados/helper/g_key.dart';

class TextFieldCustomWidget extends StatelessWidget {
  AutoCompleteTextField<String> textField;

  String selectedItem;

  @override
  Widget build(BuildContext context) {

    //
    //Aqui você puxa os nomes dos seus contratantes e coloca na lista APENAS OS NOMES STRINGS
    List<String> list = ["kaue", "rodrigo", "testeeee", "asd", "modelo"];

    return textField = AutoCompleteTextField<String>(
      decoration: InputDecoration(
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white))),
      itemSubmitted: (item) {
        selectedItem = item;
      },
      key: GKeys.gKey1,
      suggestions: list,
      itemBuilder: (context, suggestion) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            suggestion,
          ),
        );
      },
      itemSorter: (a, b) => a.compareTo(b),
      itemFilter: (suggestion, query) =>
          suggestion.toLowerCase().startsWith(query.toLowerCase()),
    );
  }
}
