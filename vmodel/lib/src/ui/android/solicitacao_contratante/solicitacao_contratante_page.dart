import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vmodel/src/ui/android/contratante_home/widgets/card_modelos_widget.dart';
import 'package:vmodel/src/ui/android/contratante_home/widgets/card_solicitacao_widget.dart';
import 'package:vmodel/src/ui/android/user_home/widgets/icon_button_back_widget.dart';

class SolicitacaoContratantePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text(
                    'Solicitações de Contratantes',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      CardSolicitacaoCustomWidget(),
                      CardSolicitacaoCustomWidget(),
                      CardSolicitacaoCustomWidget(),
                      CardSolicitacaoCustomWidget(),
                      CardSolicitacaoCustomWidget(),
                      CardSolicitacaoCustomWidget(),
                      CardSolicitacaoCustomWidget(),
                      CardSolicitacaoCustomWidget(),
                      CardSolicitacaoCustomWidget(),
                    ],
                  ),
                ),
              )
            ],
          ),
          IconButtonBackWidget()
        ]),
      ),
    );
  }
}
