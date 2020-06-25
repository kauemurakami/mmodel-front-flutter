import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

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
              TextFormField(
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
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// modelo.sobrenome = value
                },
                decoration: InputDecoration(labelText: "Sobrenome"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 40,
                validator: (value) {
                  if (value.length < 4) {
                    return "Insira um sobrenome válido";
                  } else
                    return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// modelo.senha = value
                },
                decoration: InputDecoration(labelText: "Senha"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 22,
                obscureText: true,
                validator: (value) {
                  if (value.length < 6) {
                    return "Insira uma senha válida";
                  } else
                    return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  /// client.email = value
                },
                decoration: InputDecoration(labelText: "Email"),
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
                keyboardType: TextInputType.datetime,
                onSaved: (value) {
                  //validar
                  /// client.dataNascimento = value
                },
                decoration: InputDecoration(labelText: "Data de nascimento"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  //validar idade
                  if( int.parse(value) >= 18){
                  /// client.idade = value
                  }else{
                    return "você precisaa ter mais de 18 anos para se registrar";
                  }
                },
                decoration: InputDecoration(labelText: "Idade"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 2,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  /// modelo.numero = value
                },
                decoration: InputDecoration(labelText: "Número WhatsApp"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 11,
                validator: (value) {
                  if (value.length < 3) {
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
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// modelo.cidade = value
                },
                decoration: InputDecoration(labelText: "Cidade"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 24,
                validator: (value) {
                  if (value.length < 3) {
                    return "Insira uma cidade válida";
                  } else
                    return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// modelo.estado = value
                },
                decoration: InputDecoration(labelText: "Estado"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 20,
                validator: (value) {
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
                  OutlineButton(
                    splashColor: Colors.red,
                    highlightedBorderColor: Colors.red,
                    borderSide: BorderSide(color: Colors.red),
                    onPressed: () {
                      Get.back();
                    },
                    child:
                        Text('Cancelar', style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
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
