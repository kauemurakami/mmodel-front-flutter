import 'package:get/get.dart';
import 'package:vmodel/src/ui/android/alterar_perfil/alterar_perfil_page.dart';
import 'package:vmodel/src/ui/android/cadastro/cadastro_contratante_page.dart';
import 'package:vmodel/src/ui/android/cadastro/cadastro_modelo_page.dart';
import 'package:vmodel/src/ui/android/contratante_home/contratante_home_page.dart';
import 'package:vmodel/src/ui/android/login/login_page.dart';
import 'package:vmodel/src/ui/android/portifolio/user_portifolio.dart';
import 'package:vmodel/src/ui/android/recuperar_email.dart/recuperar_senha_widget.dart';
import 'package:vmodel/src/ui/android/splash/splash_page.dart';
import 'package:vmodel/src/ui/android/tipo_cadastro/tipo_cadastro.dart';
import 'package:vmodel/src/ui/android/user_home/user_home_page.dart';

class MyRoutes {

  static final routes = [
    GetPage(name: '/', page:()=> SplashScreen(),),
    GetPage(name: '/login', page:()=> LoginPage()),
    GetPage(name: '/homeModelo', page:()=> HomeUserPage()),
    GetPage(name: '/homeContratante', page:()=> HomeContratantePage()),
    GetPage(name: '/recuperarSenha', page:()=> RecuperarSenhaPage()),
    GetPage(name: '/tipoCadastro', page:()=> TipoCadastroPage()),
    GetPage(name: '/cadastroModelo', page:()=> CadastroModeloPage()),
    GetPage(name: '/cadastroContratante', page:()=> CadastroContratantePage()),
    GetPage(name: '/portifolio', page:()=> PortifolioPage()),
    GetPage(name: '/alterarPerfilModelo', page:()=> AlterarPerfilPage()),
  ];
}