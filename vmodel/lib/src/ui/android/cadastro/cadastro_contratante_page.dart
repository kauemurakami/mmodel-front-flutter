import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';
import 'package:vmodel/src/ui/android/widgets/cancel_button_widget.dart';
import 'package:vmodel/src/ui/android/widgets/text_form_field_widget.dart';

class CadastroContratantePage extends StatefulWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));
  @override
  _CadastroContratantePageState createState() =>
      _CadastroContratantePageState();
}

class _CadastroContratantePageState extends State<CadastroContratantePage> {
  GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Form(
              child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text('Cadastro Contratante',
                    style: TextStyle(fontSize: 16)),
              ),
              TextFormCustomWidget(
                label: 'Nome',
                maxLength: 20,
                type: TextInputType.text,
                onSaved: (value) {
                  /// contratante.nome = value
                },
                validate: (value) {
                  if (value.length < 3) {
                    return "Insira um nome válido";
                  } else
                    return null;
                },
              ),
              TextFormCustomWidget(
                label: 'Email',
                maxLength: 32,
                type: TextInputType.emailAddress,
                onSaved: (value) {
                  /// contratante.email = value
                },
                validate: (value) {
                  if (!isEmail(value)) {
                    return "Insira um email válido";
                  } else
                    return null;
                },
              ),
              TextFormCustomWidget(
                label: 'Senha',
                maxLength: 22,
                type: TextInputType.text,
                onSaved: (value) {
                  /// contratante.senha = value
                },
                validate: (value) {
                  if (value.length < 6) {
                    return "Insira uma senha válida";
                  } else
                    return null;
                },
                obscure: true,
              ),
              TextFormCustomWidget(
                label: 'Site',
                maxLength: 50,
                type: TextInputType.text,
                onSaved: (value) {
                  /// contratante.site = value
                },
                validate: (value) {
                  if (!value.contains('.com')) {
                    return "Insira uma site válido";
                  } else
                    return null;
                },
              ),
              TextFormCustomWidget(
                label: 'Nome Fantasia',
                maxLength: 30,
                type: TextInputType.text,
                onSaved: (value) {
                  /// contratante.nomeFantasia = value
                },
                validate: (value) {
                  if (value.length < 3) {
                    return "Insira um nome fantasia válido válida";
                  } else
                    return null;
                },
              ),
              TextFormCustomWidget(
                label: 'Atividade',
                maxLength: 50,
                type: TextInputType.text,
                onSaved: (value) {
                  /// contratante.atividade = value
                },
                validate: (value) {
                  if (value.length < 5) {
                    return "Insira uma atividade válida";
                  } else
                    return null;
                },
              ),
              TextFormCustomWidget(
                  label: 'Razão Social',
                  maxLength: 50,
                  type: TextInputType.text,
                  onSaved: (value) {
                    /// contratante.razao = value
                  },
                  validate: (value) {
                    if (value.length < 8) {
                      return "Insira uma razao social válida";
                    } else
                      return null;
                  }),
              TextFormCustomWidget(
                label: 'cidade',
                maxLength: 24,
                type: TextInputType.text,
                onSaved: (value) {
                  /// contratante.cidade = value
                },
                validate: (value) {
                  if (value.length < 3) {
                    return "Insira uma cidade válida";
                  } else
                    return null;
                },
              ),
              TextFormCustomWidget(
                  label: 'Estado',
                  maxLength: 20,
                  type: TextInputType.text,
                  onSaved: (value) {
                    /// contratante.estado = value
                  },
                  validate: (value) {
                    if (value.length < 4) {
                      return "Insira um estado válido";
                    } else
                      return null;
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    splashColor: Theme.of(context).accentColor,
                    highlightedBorderColor: Theme.of(context).accentColor,
                    borderSide:
                        BorderSide(color: Theme.of(context).accentColor),
                    onPressed: () {
                      //sua lógica para cadastrar o modelo
                      Get.toNamed('homeContratante');

                      final FormState form = formKey.currentState;
                      if (form.validate()) {
                        form.save();

                        //cadastrar(contratante);
                        //e ir para tela de contratante
                        Get.toNamed('homeContratante');
                      } else {
                        //snackbar
                        print('erro ao salvar');
                      }
                    },
                    child: Text('Cadastrar',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  CancelButtonCustom()
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}

enum SingingCharacter { feminino, masculino }
