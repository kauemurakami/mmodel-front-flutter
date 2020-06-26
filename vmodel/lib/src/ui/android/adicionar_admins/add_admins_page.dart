import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AdicionarAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(32),
              child: Text('add admins')
            ),
          ],
        ),
        Positioned(
            child: SafeArea(
          child: IconButton(
              icon: Icon(Icons.arrow_back_ios), onPressed: () => Get.back()),
        ))
      ]),
    ));
  }
}
