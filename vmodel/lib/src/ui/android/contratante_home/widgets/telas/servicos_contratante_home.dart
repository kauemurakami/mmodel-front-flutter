import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                      TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (value) {
                          /// modelo.numero = value
                        },
                        decoration:
                            InputDecoration(labelText: "Nome do Serviço"),
                        cursorColor: Colors.white,
                        enableSuggestions: true,
                        maxLength: 50,
                        validator: (value) {
                          if (value.length < 4) {
                            return "Insira um serviço válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (value) {
                          /// modelo.numero = value
                        },
                        decoration: InputDecoration(labelText: "Produto"),
                        cursorColor: Colors.white,
                        enableSuggestions: true,
                        maxLength: 50,
                        validator: (value) {
                          if (value.length < 3) {
                            return "Insira um produto válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (value) {
                          /// modelo.numero = value
                        },
                        decoration:
                            InputDecoration(labelText: "Local de divulgação"),
                        cursorColor: Colors.white,
                        enableSuggestions: true,
                        maxLength: 50,
                        validator: (value) {
                          if (value.length < 4) {
                            return "Insira um local válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.datetime,
                        onSaved: (value) {
                          /// modelo.numero = value
                        },
                        decoration:
                            InputDecoration(labelText: "Tempo do vídeo"),
                        cursorColor: Colors.white,
                        enableSuggestions: true,
                        maxLength: 50,
                        validator: (value) {
                          if (value.length < 4) {
                            return "Insira um tempo válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          /// modelo.numero = value
                        },
                        decoration: InputDecoration(labelText: "Peço"),
                        cursorColor: Colors.white,
                        enableSuggestions: true,
                        maxLength: 7,
                        validator: (value) {
                          if (value.length < 3) {
                            return "Insira um valor válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          /// modelo.numero = value
                        },
                        decoration:
                            InputDecoration(labelText: "Papel dos contratados"),
                        cursorColor: Colors.white,
                        enableSuggestions: true,
                        maxLength: 124,
                        validator: (value) {
                          if (value.length < 5) {
                            return "Insira um papel válido";
                          } else
                            return null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (value) {
                          /// modelo.numero = value
                        },
                        decoration:
                            InputDecoration(labelText: "Atuação com fala"),
                        cursorColor: Colors.white,
                        enableSuggestions: true,
                        maxLength: 7,
                        validator: (value) {
                          if (value.length < 3) {
                            return "Insira se a atuação possui fala";
                          } else
                            return null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          /// modelo.numero = value
                        },
                        decoration:
                            InputDecoration(labelText: "Quantidade de vagas"),
                        cursorColor: Colors.white,
                        enableSuggestions: true,
                        maxLength: 7,
                        validator: (value) {
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
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      onSaved: (value) {
                                        /// modelo.altura = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Altura",
                                      ),
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
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      onSaved: (value) {
                                        /// modelo.peso = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Peso",
                                      ),
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
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      onSaved: (value) {
                                        /// modelo.quadril = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Quadril",
                                      ),
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
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      onSaved: (value) {
                                        /// modelo.cordolho = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Cor do olho",
                                      ),
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
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      onSaved: (value) {
                                        /// modelo.corpele = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Cor da pele",
                                      ),
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
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      onSaved: (value) {
                                        /// modelo.peso = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Manequim",
                                      ),
                                      cursorColor: Colors.white,
                                      enableSuggestions: true,
                                      maxLength: 3,
                                      validator: (value) {
                                        if (value.length < 1 ||
                                            value.length > 3) {
                                          return "Insira um manequim válido";
                                        } else
                                          return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      onSaved: (value) {
                                        /// modelo.peso = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Busto",
                                      ),
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
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      onSaved: (value) {
                                        /// modelo.peso = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Número calçado",
                                      ),
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
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      onSaved: (value) {
                                        /// modelo.cor cabelo = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Cor do cabelo",
                                      ),
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
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      onSaved: (value) {
                                        /// modelo.cintura = value
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Cintura",
                                      ),
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
                        OutlineButton(
                          splashColor: Colors.red,
                          highlightedBorderColor: Colors.red,
                          borderSide: BorderSide(color: Colors.red),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Cancelar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ),
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
