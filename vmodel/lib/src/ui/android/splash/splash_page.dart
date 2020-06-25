import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(milliseconds: 3500),
        //pagina de login ou fazer verificação se o usuário esta logado para home adequada

        () => Get.toNamed('login'));
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          //margin: EdgeInsets.only(top: 20),
          color: Colors.black,
          child: Image.asset(
            "assets/images/splash.gif",
            width: 200,
            height: 200,
            fit: BoxFit.contain,
            gaplessPlayback: true,
          ),
          //color: Colors.white,
        ),
        Container(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
          ),
        )
      ],
    );
  }
}
