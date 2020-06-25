import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';
import 'package:vmodel/src/ui/android/widgets/cancel_button_widget.dart';

class RecuperarSenhaPage extends StatefulWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  _RecuperarSenhaPageState createState() => _RecuperarSenhaPageState();
}

class _RecuperarSenhaPageState extends State<RecuperarSenhaPage> {
  GlobalKey formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 32, right: 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32, top: 32),
                child: Text(
                  'Recupe a senha com seu email',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => value != null,

                /// client.email = value
                decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.alternate_email)),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 32,
                validator: (value) {
                  if (!isEmail(value)) {
                    return "Insira um email válido";
                  } else
                    return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  /// client.email = value
                },
                decoration: InputDecoration(
                    labelText: "Confirme seu email",
                    prefixIcon: Icon(Icons.alternate_email)),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 32,
                validator: (value) {
                  if (!isEmail(value)) {
                    return "Insira um email válido";
                  } else
                    return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: OutlineButton(
                      borderSide:
                          BorderSide(color: Theme.of(context).accentColor),
                      onPressed: () {
                        //sua lógica para logar o usuário pegando os dados do formulário
                        final FormState form = formKey.currentState;
                        if (form.validate()) {
                          form.save();
                          //logarUser(client); // logando usuário

                          //verificar se é usuário comum ou contratante e ir para a page adequada
                          Get.offAllNamed('homeUsuario');
                          //ou
                          //Get.offAllNamed('homeContratante');
                        } else {
                          //snackbar
                          print('erro ao salvar');
                        }
                      },
                      splashColor: Theme.of(context).accentColor,
                      highlightedBorderColor: Theme.of(context).accentColor,
                      child: Text(
                        'RECUPERAR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: CancelButtonCustom()
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
