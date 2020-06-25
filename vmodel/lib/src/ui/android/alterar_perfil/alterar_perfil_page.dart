import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vmodel/src/ui/android/widgets/cancel_button_widget.dart';

class AlterarPerfilPage extends StatefulWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  _AlterarPerfilPageState createState() => _AlterarPerfilPageState();
}

class _AlterarPerfilPageState extends State<AlterarPerfilPage> {
  GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 16),
                    child:
                        Text('Editar Perfil', style: TextStyle(fontSize: 16)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width / 2.8,
                            width: MediaQuery.of(context).size.width / 3,
                            child: Image.asset(
                              "assets/images/modelo.jpeg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: InkWell(
                              splashColor: Theme.of(context).accentColor,
                              highlightColor: Theme.of(context).accentColor,
                              child: Text(
                                'Alterar foto',
                                style: TextStyle(color: Colors.grey),
                              ),
                              onTap: () {
                                //alterar
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onSaved: (value) {
                                    /// modelo.altura = value
                                  },
                                  decoration:
                                      InputDecoration(labelText: "Altura", hintText: "180cm"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 3,
                                  validator: (value) {
                                    if (value.length < 3) {
                                      return "Insira uma altura válida";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onSaved: (value) {
                                    /// modelo.peso = value
                                  },
                                  decoration:
                                      InputDecoration(labelText: "Peso", hintText: "55"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 3,
                                  validator: (value) {
                                    if (value.length < 2) {
                                      return "Insira um peso válida";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onSaved: (value) {
                                    /// modelo.quadril = value
                                  },
                                  decoration:
                                      InputDecoration(labelText: "Quadril", hintText: "40"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 2,
                                  validator: (value) {
                                    if (value.length < 2) {
                                      return "Insira uma medida válida";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  onSaved: (value) {
                                    /// modelo.cordolho = value
                                  },
                                  decoration:
                                      InputDecoration(labelText: "Cor do olho" , hintText: "verde"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 8,
                                  validator: (value) {
                                    if (value.length < 3) {
                                      return "Insira uma cor válida";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  onSaved: (value) {
                                    /// modelo.corpele = value
                                  },
                                  decoration:
                                      InputDecoration(labelText: "Cor da pele", hintText: "Branco"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 10,
                                  validator: (value) {
                                    if (value.length < 3) {
                                      return "Insira uma cor válida";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  onSaved: (value) {
                                    /// modelo.peso = value
                                  },
                                  decoration:
                                      InputDecoration(labelText: "Manequim", hintText: "M"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 3,
                                  validator: (value) {
                                    if (value.length < 1 || value.length > 3) {
                                      return "Insira um manequim válido";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onSaved: (value) {
                                    /// modelo.peso = value
                                  },
                                  decoration:
                                      InputDecoration(labelText: "Busto", hintText: "55"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 3,
                                  validator: (value) {
                                    if (value.length < 2) {
                                      return "Insira um número válido";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onSaved: (value) {
                                    /// modelo.peso = value
                                  },
                                  decoration: InputDecoration(
                                      labelText: "Número calçado", hintText: "37"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 2,
                                  validator: (value) {
                                    if (value.length < 2) {
                                      return "Insira um número válido";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  onSaved: (value) {
                                    /// modelo.cor cabelo = value
                                  },
                                  decoration: InputDecoration(
                                      labelText: "Cor do cabelo", hintText: "Castanho"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 3,
                                  validator: (value) {
                                    if (value.length < 3) {
                                      return "Insira uma cor válida";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: TextFormField(
                                  
                                  keyboardType: TextInputType.number,
                                  onSaved: (value) {
                                    /// modelo.cintura = value
                                  },
                                  decoration:
                                      InputDecoration(labelText: "Cintura", hintText: "55"),
                                  cursorColor: Colors.white,
                                  enableSuggestions: true,
                                  maxLength: 3,
                                  validator: (value) {
                                    if (value.length < 2) {
                                      return "Insira um tamanho de cintura";
                                    } else
                                      return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      onSaved: (value) {
                        /// modelo.cintura = value
                      },
                      decoration: InputDecoration(labelText: "Sobre você", hintText: "Meu nome é Roberto tenho sausaisiuasa anos e estou a procura de xxxxxxxxxxxxxxxx"),
                      cursorColor: Colors.white,
                      enableSuggestions: true,
                      maxLength: 400,
                      
                      validator: (value) {
                        if (value.length < 5) {
                          return "Insira uma descrição válida";
                        } else
                          return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
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
                          child: Text('Alterar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CancelButtonCustom()
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
