import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

class LoginPage extends StatefulWidget {
//repository injection

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey formKey = GlobalKey<FormState>();
  bool lembrarEmail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xff1d1d1d),
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset(
              "assets/images/vmodelimage.jpeg",
              width: 300,
              height: 200,
            ),
          ),
          Text(
            'Models Agency',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 32, right: 32),
            child: Form(
              key: formKey,
              child: Column(children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value){
                  /// client.email = value
                  },
                  decoration: InputDecoration(
                      labelText: "Email", prefixIcon: Icon(Icons.alternate_email)),
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
                    onSaved: (value){
                    // client.password = value                      
                    },
                    decoration: InputDecoration(
                        labelText: "Senha",
                        prefixIcon: Icon(Icons.lock_outline)),
                    cursorColor: Colors.white,
                    enableSuggestions: true,
                    obscureText: true,
                    maxLength: 20,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Insira uma senha";
                      } else if (value.length < 5) {
                        return "Insira uma senha maior";
                      } else
                        return null;
                    }),
                Switch(
                    activeColor: Theme.of(context).accentColor,
                    value: lembrarEmail,
                    onChanged: (data) {
                      //sua função de lembrar o email
                      setState(() {
                        lembrarEmail = data;
                      });
                    }),
                Text("Lembrar email", style: TextStyle(color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: RaisedButton(
                    color: Color(0xffD358F7),
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
                    splashColor: Colors.purpleAccent,
                    child: Text(
                      'ENTRAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: GestureDetector(
                      onTap: () {
                        //tela de inscrever-se
                        Get.toNamed('tipoCadastro');
                      },
                      child: Text(
                        "Inscreva-se",
                        style: TextStyle(color: Theme.of(context).accentColor),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: GestureDetector(
                    onTap: () {
                      //tela de recuperar senha
                      Get.toNamed('recuperarSenha');
                    },
                    child: Text(
                      "Esqueci minha senha",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    ));
  }
}
