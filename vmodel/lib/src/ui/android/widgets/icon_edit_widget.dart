import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 5,
      child: SafeArea(
        child: IconButton(
            icon: Icon(Icons.edit, color: Colors.white),
            onPressed: () {
              //editar
              Get.toNamed('alterarPerfilModelo');
            },
            splashColor: Theme.of(context).accentColor),
      ),
    );
  }
}
