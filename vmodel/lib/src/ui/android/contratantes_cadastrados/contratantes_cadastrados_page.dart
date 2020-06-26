import 'package:flutter/material.dart';
import 'package:vmodel/src/ui/android/contratantes_cadastrados/widgets/text_field_widget.dart';
import 'package:vmodel/src/ui/android/user_home/widgets/icon_button_back_widget.dart';

class ContratantesCadastradosPage extends StatefulWidget {
  @override
  _ContratantesCadastradosPageState createState() =>
      _ContratantesCadastradosPageState();
}

class _ContratantesCadastradosPageState
    extends State<ContratantesCadastradosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 16),
                  child:
                      Text('Contratantes Cadastrados', style: TextStyle(fontSize: 16)),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: TextFieldCustomWidget(),
                ),
              ],
            ),
          ),
          Container(),
          IconButtonBackWidget()
        ],
      ),
    );
  }
}
