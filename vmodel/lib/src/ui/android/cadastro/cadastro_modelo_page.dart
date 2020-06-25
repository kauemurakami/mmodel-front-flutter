import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';
import 'package:vmodel/src/ui/android/widgets/cancel_button_widget.dart';
import 'package:vmodel/src/ui/android/widgets/text_form_field_widget.dart';

class CadastroModeloPage extends StatefulWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));
  @override
  _CadastroModeloPageState createState() => _CadastroModeloPageState();
}

class _CadastroModeloPageState extends State<CadastroModeloPage> {
  SingingCharacter _character = SingingCharacter.feminino;
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
                child: Text('Cadastro Modelo', style: TextStyle(fontSize: 16)),
              ),
              TextFormCustomWidget(
                  label: 'Nome',
                  validate: (value) {
                    if (value.length < 3) {
                      return "Insira um nome válido";
                    } else
                      return null;
                  },
                  maxLength: 20,
                  type: TextInputType.text,
                  onSaved: (value) {
                    /// modelo.nome = value
                  }),
              TextFormCustomWidget(
                  label: 'Sobrenome',
                  validate: (value) {
                    if (value.length < 4) {
                      return "Insira um sobrenome válido";
                    } else
                      return null;
                  },
                  maxLength: 40,
                  type: TextInputType.text,
                  onSaved: (value) {
                    /// modelo.sobrenome = value
                  }),
              TextFormCustomWidget(
                label: 'Senha',
                validate: (value) {
                  if (value.length < 6) {
                    return "Insira uma senha válida";
                  } else
                    return null;
                },
                maxLength: 22,
                type: TextInputType.text,
                onSaved: (value) {
                  /// modelo.senha = value
                },
                obscure: true,
              ),
              TextFormCustomWidget(
                  label: 'Email',
                  validate: (value) {
                    if (!isEmail(value)) {
                      return "Insira um email válido";
                    } else
                      return null;
                  },
                  maxLength: 32,
                  type: TextInputType.emailAddress,
                  onSaved: (value) {
                    /// client.email = value
                  }),
              TextFormCustomWidget(
                  label: 'Data de nascimento',
                  maxLength: 10,
                  type: TextInputType.datetime,
                  onSaved: (value) {
                    //validar
                    /// client.dataNascimento = value
                  }),
              TextFormCustomWidget(
                label: 'Idade',
                maxLength: 2,
                type: TextInputType.number,
                onSaved: (value) {
                  //model.idade = value
                },
                validate: (value) {
                  if (int.parse(value) >= 18) {
                    /// client.idade = value
                  } else {
                    return "você precisaa ter mais de 18 anos para se registrar";
                  }
                  return "";
                },
              ),
              TextFormCustomWidget(
                label: 'Número WhatsApp ',
                maxLength: 11,
                type: TextInputType.number,
                onSaved: (value) {
                  /// modelo.numero = value
                },
                validate: (value) {
                  if (value.length < 9) {
                    return "Insira um número válido";
                  } else
                    return null;
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: RadioListTile<SingingCharacter>(
                      activeColor: Color(0xffD358F7),
                      title: Text("Feminino"),
                      value: SingingCharacter.feminino,
                      groupValue: _character,
                      onChanged: (value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: RadioListTile<SingingCharacter>(
                      activeColor: Color(0xffD358F7),
                      title: Text("Masculino"),
                      value: SingingCharacter.masculino,
                      groupValue: _character,
                      onChanged: (value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              TextFormCustomWidget(
                  label: 'Cidade',
                  maxLength: 24,
                  type: TextInputType.text,
                  onSaved: (value) {
                    /// modelo.cidade = value
                  },
                  validate: (value) {
                    if (value.length < 3) {
                      return "Insira uma cidade válida";
                    } else
                      return null;
                  }),
              TextFormCustomWidget(
                label: 'Estado',
                maxLength: 20,
                type: TextInputType.text,
                onSaved: (value) {
                  /// modelo.estado = value
                },
                validate: (value) {
                  if (value.length < 4) {
                    return "Insira um estado válido";
                  } else
                    return null;
                },
              ),
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
                      final FormState form = formKey.currentState;
                      Get.toNamed('homeModelo');

                      if (form.validate()) {
                        form.save();
                        //recupera seu _character que é o sexo, coloca no objeto modelo e salva,
                        //cadastrar(modelo);
                        //e ir para tela de modelo
                        Get.toNamed('homeModelo');
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
