import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

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
                child: Text('Cadastro Contratante', style: TextStyle(fontSize: 16)),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// contratante.nome = value
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
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  /// contratante.email = value
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
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// contratante.senha = value
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
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// contratante.site = value
                },
                decoration: InputDecoration(labelText: "Site"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 50,
                validator: (value) {
                  if (!value.contains('.com')) {
                    return "Insira uma site válido";
                  } else
                    return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// contratante.nomeFantasia = value
                },
                decoration: InputDecoration(labelText: "Nome fantasia"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 30,
                validator: (value) {
                  if (value.length < 3) {
                    return "Insira um nome fantasia válido válida";
                  } else
                    return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// contratante.atividade = value
                },
                decoration: InputDecoration(labelText: "Atividade"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 50,
                validator: (value) {
                  if (value.length < 5) {
                    return "Insira uma atividade válida";
                  } else
                    return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// contratante.razao = value
                },
                decoration: InputDecoration(labelText: "Razão Social"),
                cursorColor: Colors.white,
                enableSuggestions: true,
                maxLength: 50,
                validator: (value) {
                  if (value.length < 8) {
                    return "Insira uma razao social válida";
                  } else
                    return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  /// contratante.cidade = value
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
                  /// contratante.estado = value
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
                  OutlineButton(
                    splashColor: Colors.red,
                    highlightedBorderColor: Colors.red,
                    borderSide: BorderSide(color: Colors.red),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Cancelar',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
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
