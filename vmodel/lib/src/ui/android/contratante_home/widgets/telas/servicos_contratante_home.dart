import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vmodel/src/ui/android/widgets/cancel_button_widget.dart';
import 'package:vmodel/src/ui/android/widgets/text_form_field_widget.dart';

class ServicosPage extends StatefulWidget {
  @override
  _ServicosPageState createState() => _ServicosPageState();
}

class _ServicosPageState extends State<ServicosPage> {
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
                    child: Text('Criar um Serviço',
                        style: TextStyle(fontSize: 16)),
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
                                'Adicionar uma foto',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormCustomWidget(
                          label: 'Nome do Serviço',
                          maxLength: 50,
                          type: TextInputType.text,
                          onSaved: (value) {
                            /// servico.nome = value
                          },
                          validate: (value) {
                            if (value.length < 4) {
                              return "Insira um serviço válido";
                            } else
                              return null;
                          }),
                      TextFormCustomWidget(
                        label: 'Produto',
                        maxLength: 50,
                        type: TextInputType.text,
                        onSaved: (value) {
                          /// servico.produto = value
                        },
                        validate: (value) {
                          if (value.length < 3) {
                            return "Insira um produto válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormCustomWidget(
                        label: 'Local de Divulgação',
                        maxLength: 50,
                        type: TextInputType.text,
                        onSaved: (value) {
                          /// servico.localDivulgacao = value
                        },
                        validate: (value) {
                          if (value.length < 4) {
                            return "Insira um local válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormCustomWidget(
                        label: 'Tempo do vídeo',
                        maxLength: 6,
                        type: TextInputType.text,
                        onSaved: (value) {
                          /// servico.tempoVideo = value
                        },
                        validate: (value) {
                          if (value.length < 4) {
                            return "Insira um tempo válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormCustomWidget(
                          label: 'Preço',
                          maxLength: 7,
                          type: TextInputType.number,
                          onSaved: (value) {
                            /// servico.valor = value
                          },
                          validate: (value) {
                            if (value.length < 3) {
                              return "Insira um valor válido";
                            } else
                              return null;
                          }),
                      TextFormCustomWidget(
                        label: 'Papel dos contratados',
                        maxLength: 124,
                        type: TextInputType.text,
                        onSaved: (value) {
                          /// servico.papel = value
                        },
                        validate: (value) {
                          if (value.length < 5) {
                            return "Insira um papel válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormCustomWidget(
                        label: 'Atuação com fala',
                        maxLength: 3,
                        type: TextInputType.text,
                        onSaved: (value) {
                          /// servico.fala = value
                        },
                        validate: (value) {
                          if (value.length < 3) {
                            return "Insira se a atuação possui fala";
                          } else
                            return null;
                        },
                      ),
                      TextFormCustomWidget(
                        label: 'Vagas',
                        maxLength: 4,
                        type: TextInputType.number,
                        onSaved: (value) {
                          /// seervico.qtVagas = value
                        },
                        validate: (value) {
                          if (value.length < 1) {
                            return "Insira uma quantidade válida";
                          } else
                            return null;
                        },
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
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormCustomWidget(
                                      label: 'Altura',
                                      maxLength: 3,
                                      type: TextInputType.number,
                                      onSaved: (value) {
                                        /// modelo.altura = value
                                      },
                                      validate: (value) {
                                        if (value.length < 3) {
                                          return "Insira uma altura válida";
                                        } else
                                          return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormCustomWidget(
                                      label: 'Peso',
                                      maxLength: 3,
                                      type: TextInputType.number,
                                      onSaved: (value) {
                                        /// modelo.peso = value
                                      },
                                      validate: (value) {
                                        if (value.length < 2) {
                                          return "Insira um peso válida";
                                        } else
                                          return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormCustomWidget(
                                      label: 'Quadril',
                                      maxLength: 3,
                                      type: TextInputType.number,
                                      onSaved: (value) {
                                        /// modelo.quadril = value
                                      },
                                      validate: (value) {
                                        if (value.length < 2) {
                                          return "Insira uma medida válida";
                                        } else
                                          return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormCustomWidget(
                                      label: 'Cor do olho',
                                      maxLength: 9,
                                      type: TextInputType.text,
                                      onSaved: (value) {
                                        /// modelo.cordolho = value
                                      },
                                      validate: (value) {
                                        if (value.length < 3) {
                                          return "Insira uma cor válida";
                                        } else
                                          return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      child: TextFormCustomWidget(
                                        label: 'Cor da pele',
                                        maxLength: 10,
                                        type: TextInputType.text,
                                        onSaved: (value) {
                                          /// modelo.corpele = value
                                        },
                                        validate: (value) {
                                          if (value.length < 3) {
                                            return "Insira uma cor válida";
                                          } else
                                            return null;
                                        },
                                      )),
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
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      child: TextFormCustomWidget(
                                        label: 'Manequim',
                                        maxLength: 3,
                                        type: TextInputType.text,
                                        onSaved: (value) {
                                          /// modelo.peso = value
                                        },
                                        validate: (value) {
                                          if (value.length < 1 ||
                                              value.length > 3) {
                                            return "Insira um manequim válido";
                                          } else
                                            return null;
                                        },
                                      )),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      child: TextFormCustomWidget(
                                        label: 'Busto',
                                        maxLength: 3,
                                        type: TextInputType.number,
                                        onSaved: (value) {
                                          /// modelo.peso = value
                                        },
                                        validate: (value) {
                                          if (value.length < 2) {
                                            return "Insira um número válido";
                                          } else
                                            return null;
                                        },
                                      )),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      child: TextFormCustomWidget(
                                        label: 'Número calçado',
                                        maxLength: 2,
                                        type: TextInputType.number,
                                        onSaved: (value) {
                                          /// modelo.peso = value
                                        },
                                        validate: (value) {
                                          if (value.length < 2) {
                                            return "Insira um número válido";
                                          } else
                                            return null;
                                        },
                                      )),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      child: TextFormCustomWidget(
                                        label: 'Cor cabelo',
                                        maxLength: 10,
                                        type: TextInputType.text,
                                        onSaved: (value) {
                                          /// modelo.cor cabelo = value
                                        },
                                        validate: (value) {
                                          if (value.length < 3) {
                                            return "Insira uma cor válida";
                                          } else
                                            return null;
                                        },
                                      )),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      child: TextFormCustomWidget(
                                        label: 'Cintura',
                                        maxLength: 3,
                                        type: TextInputType.number,
                                        onSaved: (value) {
                                          /// modelo.cintura = value
                                        },
                                        validate: (value) {
                                          if (value.length < 2) {
                                            return "Insira um tamanho de cintura";
                                          } else
                                            return null;
                                        },
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                      decoration: InputDecoration(
                          labelText: "Sobre você",
                          hintText:
                              "Meu nome é Roberto tenho sausaisiuasa anos e estou a procura de xxxxxxxxxxxxxxxx"),
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
                          child: Text('Criar',
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
