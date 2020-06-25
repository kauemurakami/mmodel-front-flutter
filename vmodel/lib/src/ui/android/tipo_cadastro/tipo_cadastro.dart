import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TipoCadastroPage extends StatelessWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text('Cadastre-se como ', style: TextStyle(fontSize: 16)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 100,
                    child: OutlineButton(
                      splashColor: Theme.of(context).accentColor,
                      highlightedBorderColor: Theme.of(context).accentColor,
                      borderSide:
                          BorderSide(color: Theme.of(context).accentColor),
                      onPressed: () {
                        //sua lógica para cadastrar o modelo

                        Get.toNamed('homeModelo');
                      },
                      child: Text('Modelo',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text("OU"),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 200,
                    height: 100,
                    child: OutlineButton(
                      splashColor: Colors.red,
                      highlightedBorderColor: Colors.red,
                      borderSide: BorderSide(color: Colors.red),
                      onPressed: () {
                        Get.toNamed('cadastroContratante');
                      },
                      child: Text('Contratante',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ),
                ],
              )
            ],
          ),
          GestureDetector(child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text('Voltar', style: TextStyle(color: Colors.grey),),
          ), onTap: (){Get.back();},)
        ],
      ),
    );
  }
}
